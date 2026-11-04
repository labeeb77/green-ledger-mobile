import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/change_password_cubit.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/login_cubit.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/sessions.dart';

class _MockRepository extends Mock implements AuthRepository;

void main() {
  late _MockRepository repository;
  late StreamController<void> expired;
  final session = sessionFor(Role.agent);
  const offline = AppFailure(kind: FailureKind.network, message: 'No internet');
  const refused = AppFailure(
    kind: FailureKind.rejected,
    message: 'Wrong mobile number or password',
    code: 'INVALID_CREDENTIALS',
  );

  setUp(() {
    repository = _MockRepository();
    expired = StreamController<void>.broadcast();
    when(() => repository.sessionExpired).thenAnswer((_) => expired.stream);
    when(() => repository.signOut()).thenAnswer((_) async {});
  });
  tearDown(() => expired.close());

  group('AuthBloc', () {
    blocTest<AuthBloc, AuthState>(
      'restores a saved session',
      setUp: () => when(() => repository.restore()).thenAnswer((_) async => Ok(session)),
      build: () => AuthBloc(repository),
      act: (bloc) => bloc.add(const AuthStarted()),
      expect: () => [isA<AuthUnknown>(), isA<AuthSignedIn>().having((s) => s.session, 'session', session)],
    );

    blocTest<AuthBloc, AuthState>(
      'no saved session → signed out',
      setUp: () => when(() => repository.restore()).thenAnswer((_) async => const Ok(null)),
      build: () => AuthBloc(repository),
      act: (bloc) => bloc.add(const AuthStarted()),
      expect: () => [isA<AuthUnknown>(), isA<AuthSignedOut>()],
    );

    blocTest<AuthBloc, AuthState>(
      'offline at start keeps the session and offers a retry',
      setUp: () => when(() => repository.restore()).thenAnswer((_) async => const Err(offline)),
      build: () => AuthBloc(repository),
      act: (bloc) => bloc.add(const AuthStarted()),
      expect: () => [isA<AuthUnknown>(), isA<AuthRestoreFailed>()],
    );

    blocTest<AuthBloc, AuthState>(
      'a refused refresh signs out with "expired"',
      build: () => AuthBloc(repository),
      act: (_) => expired.add(null),
      expect: () => [isA<AuthSignedOut>().having((s) => s.expired, 'expired', true)],
    );

    blocTest<AuthBloc, AuthState>(
      'sign out',
      build: () => AuthBloc(repository),
      seed: () => AuthSignedIn(session),
      act: (bloc) => bloc.add(const AuthSignOutRequested()),
      expect: () => [isA<AuthSignedOut>().having((s) => s.expired, 'expired', false)],
      verify: (_) => verify(() => repository.signOut()).called(1),
    );
  });

  group('LoginCubit', () {
    blocTest<LoginCubit, LoginState>(
      'shows the server message when sign-in is refused',
      setUp: () => when(
        () => repository.signIn(
          phone: any(named: 'phone'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async => const Err(refused)),
      build: () => LoginCubit(repository, onSignedIn: (_) => fail('should not sign in')),
      act: (cubit) => cubit.submit(phone: ' 9000000005 ', password: 'x'),
      expect: () => [
        isA<LoginState>().having((s) => s.submitting, 'submitting', true),
        isA<LoginState>().having((s) => s.failure?.code, 'code', 'INVALID_CREDENTIALS'),
      ],
      verify: (_) => verify(() => repository.signIn(phone: '9000000005', password: 'x')).called(1),
    );

    test('passes the session on', () async {
      when(
        () => repository.signIn(
          phone: any(named: 'phone'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async => Ok(session));
      Session? signedIn;
      await LoginCubit(repository, onSignedIn: (s) => signedIn = s).submit(phone: '9000000005', password: 'Demo@12345');
      expect(signedIn, session);
    });
  });

  group('ChangePasswordCubit', () {
    test('rules match the server', () {
      expect(newPasswordProblem('short1'), 'Use at least 8 characters');
      expect(newPasswordProblem('12345678'), 'Include at least one letter');
      expect(newPasswordProblem('abcdefgh'), 'Include at least one number');
      expect(newPasswordProblem('abcdefg1'), isNull);
    });

    test('reuses the idempotency key after a network failure, not after a refusal', () async {
      final keys = <String>[];
      final results = <Result<Session>>[const Err(offline), const Err(refused), Ok(session)];
      when(
        () => repository.changePassword(
          currentPassword: any(named: 'currentPassword'),
          newPassword: any(named: 'newPassword'),
          idempotencyKey: any(named: 'idempotencyKey'),
        ),
      ).thenAnswer((invocation) async {
        keys.add(invocation.namedArguments[#idempotencyKey] as String);
        return results.removeAt(0);
      });
      final cubit = ChangePasswordCubit(repository, onChanged: (_) {});
      for (var i = 0; i < 3; i++) {
        await cubit.submit(currentPassword: 'Temp1234', newPassword: 'Mine1234');
      }
      expect(keys[0], keys[1]);
      expect(keys[2], isNot(keys[1]));
      await cubit.close();
    });
  });
}
