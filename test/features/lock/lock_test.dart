import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/app_numpad.dart';
import 'package:green_ledger_mobile/features/lock/domain/pin.dart';
import 'package:green_ledger_mobile/features/lock/presentation/bloc/lock_cubit.dart';
import 'package:green_ledger_mobile/features/lock/presentation/widgets/lock_gate.dart';

class _MemoryStore implements PinStore {
  StoredPin? pin;
  int failed = 0;

  @override
  Future<StoredPin?> read() async => pin;

  @override
  Future<void> write(StoredPin pin) async => this.pin = pin;

  @override
  Future<int> failedAttempts() async => failed;

  @override
  Future<void> setFailedAttempts(int count) async => failed = count;

  @override
  Future<void> clear() async {
    pin = null;
    failed = 0;
  }
}

class _FakeBiometrics implements Biometrics {
  bool has = false;
  bool passes = true;
  int asked = 0;

  @override
  Future<bool> available() async => has;

  @override
  Future<bool> authenticate() async {
    asked++;
    return passes;
  }
}

StoredPin _pinFor(String userId, String digits, {bool biometrics = false}) =>
    StoredPin(userId: userId, salt: 's', hash: hashPin(digits, 's'), biometrics: biometrics);

void main() {
  late _MemoryStore store;
  late _FakeBiometrics biometrics;
  late int lockedOut;
  late DateTime now;
  LockCubit cubit() => LockCubit(store, biometrics, onLockedOut: () => lockedOut++, now: () => now);

  setUp(() {
    store = _MemoryStore();
    biometrics = _FakeBiometrics();
    lockedOut = 0;
    now = DateTime(2026, 11, 7, 10);
  });

  test('the hash is salted and never the digits', () {
    expect(hashPin('1234', 'a'), isNot(hashPin('1234', 'b')));
    expect(hashPin('1234', 'a'), hashPin('1234', 'a'));
    expect(hashPin('1234', 'a'), isNot(contains('1234')));
  });

  test('a PIN keeps its leading zero and stops at 4 digits', () {
    var v = '';
    for (final d in [0, 1, 2, 3, 4]) {
      v = applyNumpadKey(v, DigitKey(d), maxLength: pinLength, code: true);
    }
    expect(v, '0123');
    expect(applyNumpadKey('0', const DigitKey(5)), '5');
  });

  test('no PIN yet (first sign-in or an existing login): set one, then the app opens', () async {
    final c = cubit();
    await c.signedIn('u1', restored: true);
    expect(c.state, isA<LockSetup>());
    await c.setPin('0123');
    expect(c.state, isA<LockOpen>());
    expect(store.pin!.userId, 'u1');
    expect(store.pin!.hash, isNot('0123'));
  });

  test('with biometrics on the phone, it is offered once after the PIN', () async {
    biometrics.has = true;
    final c = cubit();
    await c.signedIn('u1', restored: false);
    await c.setPin('1234');
    expect((c.state as LockSetup).offerBiometrics, isTrue);
    await c.chooseBiometrics(on: true);
    expect(c.state, isA<LockOpen>());
    expect(store.pin!.biometrics, isTrue);
  });

  test('an app start locks; a password sign-in of the same user does not', () async {
    store.pin = _pinFor('u1', '1234');
    final c = cubit();
    await c.signedIn('u1', restored: true);
    expect((c.state as LockLocked).attemptsLeft, 5);
    await c.enterPin('1234');
    expect(c.state, isA<LockOpen>());

    await c.signedIn('u1', restored: false);
    expect(c.state, isA<LockOpen>());
  });

  test("another user's PIN is dropped and a new one asked", () async {
    store.pin = _pinFor('u1', '1234');
    final c = cubit();
    await c.signedIn('u2', restored: true);
    expect(c.state, isA<LockSetup>());
    expect(store.pin, isNull);
  });

  test('locks again only after 5 minutes in the background', () async {
    store.pin = _pinFor('u1', '1234');
    final c = cubit();
    await c.signedIn('u1', restored: false);
    c.paused();
    now = now.add(const Duration(minutes: 4, seconds: 59));
    await c.resumed();
    expect(c.state, isA<LockOpen>());
    c.paused();
    now = now.add(lockAfter);
    await c.resumed();
    expect(c.state, isA<LockLocked>());
  });

  test('5 wrong PINs, even across restarts, forget the PIN and sign out', () async {
    store.pin = _pinFor('u1', '1234');
    var c = cubit();
    await c.signedIn('u1', restored: true);
    for (var i = 0; i < 3; i++) {
      await c.enterPin('0000');
    }
    expect((c.state as LockLocked).attemptsLeft, 2);

    c = cubit();
    await c.signedIn('u1', restored: true);
    expect((c.state as LockLocked).attemptsLeft, 2);
    await c.enterPin('0000');
    expect(lockedOut, 0);
    await c.enterPin('0000');
    expect((lockedOut, store.pin), (1, null));
    expect(c.state, isA<LockOpen>());
  });

  test('biometrics unlock right away at start when chosen; a failed scan leaves the PIN', () async {
    biometrics.has = true;
    store.pin = _pinFor('u1', '1234', biometrics: true);
    final c = cubit();
    await c.signedIn('u1', restored: true);
    expect(c.state, isA<LockOpen>());
    expect(biometrics.asked, 1);

    biometrics.passes = false;
    await c.signedIn('u1', restored: true);
    expect((c.state as LockLocked).biometrics, isTrue);
  });

  test('signing out forgets the PIN', () async {
    store.pin = _pinFor('u1', '1234');
    final c = cubit();
    await c.signedIn('u1', restored: true);
    await c.signedOut();
    expect(c.state, isA<LockOpen>());
    expect(store.pin, isNull);
  });

  group('screens', () {
    Future<LockCubit> pump(WidgetTester tester) async {
      final c = cubit();
      await tester.pumpWidget(
        BlocProvider.value(
          value: c,
          child: MaterialApp(
            theme: AppTheme.light(),
            home: const LockGate(child: Text('the app')),
          ),
        ),
      );
      return c;
    }

    Future<void> type(WidgetTester tester, String digits) async {
      for (final d in digits.split('')) {
        await tester.tap(find.text(d).last);
        await tester.pump();
      }
      await tester.pumpAndSettle();
    }

    testWidgets('set: type twice; a mismatch starts again; then the app shows', (tester) async {
      final c = await pump(tester);
      await c.signedIn('u1', restored: false);
      await tester.pumpAndSettle();
      expect(find.text('Set a 4-digit PIN'), findsOneWidget);
      expect(find.text('the app'), findsNothing);

      await type(tester, '1234');
      expect(find.text('Type the PIN again'), findsOneWidget);
      await type(tester, '1235');
      expect(find.text('The PINs didn’t match. Start again.'), findsOneWidget);

      await type(tester, '1234');
      await type(tester, '1234');
      expect(find.text('the app'), findsOneWidget);
    });

    testWidgets('unlock: a wrong PIN says how many tries are left', (tester) async {
      store.pin = _pinFor('u1', '1234');
      final c = await pump(tester);
      await c.signedIn('u1', restored: true);
      await tester.pumpAndSettle();
      expect(find.text('Enter your PIN'), findsOneWidget);
      await type(tester, '9999');
      expect(find.text('Wrong PIN. 4 tries left.'), findsOneWidget);
      await type(tester, '1234');
      expect(find.text('the app'), findsOneWidget);
    });

    testWidgets('Forgot PIN signs out', (tester) async {
      store.pin = _pinFor('u1', '1234');
      final c = await pump(tester);
      await c.signedIn('u1', restored: true);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Forgot PIN? Sign in with password'));
      await tester.pumpAndSettle();
      expect((lockedOut, store.pin), (1, null));
    });
  });
}
