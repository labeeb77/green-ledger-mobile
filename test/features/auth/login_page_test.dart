import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/auth/presentation/pages/login_page.dart';
import 'package:mocktail/mocktail.dart';

class _MockRepository extends Mock implements AuthRepository;

void main() {
  testWidgets('validates, then shows the refusal in plain words', (tester) async {
    final repository = _MockRepository();
    when(() => repository.sessionExpired).thenAnswer((_) => const Stream.empty());
    when(
      () => repository.signIn(
        phone: any(named: 'phone'),
        password: any(named: 'password'),
      ),
    ).thenAnswer(
      (_) async => const Err(
        AppFailure(kind: FailureKind.rejected, message: 'Wrong mobile number or password', code: 'INVALID_CREDENTIALS'),
      ),
    );
    final auth = AuthBloc(repository);
    await tester.pumpWidget(
      RepositoryProvider<AuthRepository>.value(
        value: repository,
        child: BlocProvider.value(
          value: auth,
          child: MaterialApp(theme: AppTheme.light(), home: const LoginPage()),
        ),
      ),
    );

    await tester.tap(find.text('SIGN IN'));
    await tester.pump();
    expect(find.text('Enter the 10-digit mobile number'), findsOneWidget);

    await tester.enterText(find.widgetWithText(TextFormField, 'Mobile number'), '9000000005');
    await tester.enterText(find.widgetWithText(TextFormField, 'Password'), 'wrong');
    await tester.tap(find.text('SIGN IN'));
    await tester.pumpAndSettle();
    expect(find.text('Wrong mobile number or password'), findsOneWidget);
    expect(find.text('INVALID_CREDENTIALS'), findsOneWidget);
    unawaited(auth.close());
  });
}
