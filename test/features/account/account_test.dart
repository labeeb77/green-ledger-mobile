import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/launch/contact_launcher.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/account/data/account_repository_impl.dart';
import 'package:green_ledger_mobile/features/account/domain/account.dart';
import 'package:green_ledger_mobile/features/account/presentation/bloc/delete_account_cubit.dart';
import 'package:green_ledger_mobile/features/account/presentation/pages/delete_account_page.dart';
import 'package:green_ledger_mobile/features/account/presentation/pages/help_page.dart';
import 'package:mocktail/mocktail.dart';

class _MockAccount extends Mock implements AccountRepository;

class _FakeLauncher extends ContactLauncher {
  final called = <String>[];

  @override
  Future<bool> call(String phone) async {
    called.add('call $phone');
    return true;
  }

  @override
  Future<bool> whatsApp(String phone) async {
    called.add('wa $phone');
    return true;
  }
}

final _pending = DeletionRequest(
  status: DeletionStatus.pending,
  createdAt: DateTime.utc(2026, 11, 7, 5),
  byOwner: true,
);
const _offline = AppFailure(kind: FailureKind.network, message: 'No internet');

Widget _app(AccountRepository repo, Widget home) => RepositoryProvider<AccountRepository>.value(
  value: repo,
  child: MaterialApp(theme: AppTheme.light(), home: home),
);

void main() {
  test('maps the server request; support handles an owner', () {
    final r = deletionRequestFrom(status: 'declined', createdAt: DateTime.utc(2026), handledBy: 'support');
    expect((r.status, r.byOwner), (DeletionStatus.declined, false));
  });

  test('a failed send keeps its key for the retry; a declined request can be sent again', () async {
    final repo = _MockAccount();
    when(repo.myDeletionRequest).thenAnswer((_) async => const Ok(null));
    final keys = <String>[];
    var fail = true;
    when(
      () => repo.requestDeletion(
        idempotencyKey: any(named: 'idempotencyKey'),
        reason: any(named: 'reason'),
      ),
    ).thenAnswer((inv) async {
      keys.add(inv.namedArguments[#idempotencyKey] as String);
      return fail ? const Err(_offline) : Ok(_pending);
    });
    final cubit = DeleteAccountCubit(repo);
    await cubit.load();
    expect(cubit.state.canRequest, isTrue);
    await cubit.request('  ');
    expect(cubit.state.failure, _offline);
    fail = false;
    await cubit.request('');
    expect(keys.toSet(), hasLength(1));
    verify(() => repo.requestDeletion(idempotencyKey: keys.first)).called(2);
    expect((cubit.state.request?.status, cubit.state.canRequest), (DeletionStatus.pending, false));

    when(repo.myDeletionRequest).thenAnswer(
      (_) async => Ok(DeletionRequest(status: DeletionStatus.declined, createdAt: DateTime.utc(2026), byOwner: false)),
    );
    await cubit.load();
    expect(cubit.state.canRequest, isTrue);
  });

  testWidgets('delete account: explain, confirm, then show the request is with the owner', (tester) async {
    final repo = _MockAccount();
    when(repo.myDeletionRequest).thenAnswer((_) async => const Ok(null));
    when(
      () => repo.requestDeletion(
        idempotencyKey: any(named: 'idempotencyKey'),
        reason: 'Leaving',
      ),
    ).thenAnswer((_) async => Ok(_pending));
    await tester.pumpWidget(_app(repo, const DeleteAccountPage(isOwner: false)));
    await tester.pumpAndSettle();
    expect(find.textContaining('Your business owner removes your login'), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'Leaving');
    await tester.tap(find.text('REQUEST DELETION'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('YES, SEND REQUEST'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Your owner will remove your account.'), findsOneWidget);
    expect(find.text('REQUEST DELETION'), findsNothing);
  });

  testWidgets('owners are told it closes the business', (tester) async {
    final repo = _MockAccount();
    when(repo.myDeletionRequest).thenAnswer((_) async => const Ok(null));
    await tester.pumpWidget(_app(repo, const DeleteAccountPage(isOwner: true)));
    await tester.pumpAndSettle();
    expect(find.textContaining('closes the whole business'), findsOneWidget);
  });

  testWidgets('help: only the configured contacts, and the app version', (tester) async {
    final repo = _MockAccount();
    when(repo.support).thenAnswer((_) async => const Ok(SupportContact(phone: '+919800000000')));
    final launcher = _FakeLauncher();
    await tester.pumpWidget(_app(repo, HelpPage(launcher: launcher, version: '1.0.0 (1)')));
    await tester.pumpAndSettle();
    expect(find.text('Call support'), findsOneWidget);
    expect(find.text('WhatsApp support'), findsNothing);
    expect(find.text('1.0.0 (1)'), findsOneWidget);
    await tester.tap(find.text('Call support'));
    expect(launcher.called, ['call +919800000000']);
  });
}
