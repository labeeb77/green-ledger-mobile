import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';
import 'package:green_ledger_mobile/features/shops/presentation/bloc/shop_detail_cubit.dart';
import 'package:green_ledger_mobile/features/shops/presentation/bloc/shops_cubit.dart';
import 'package:mocktail/mocktail.dart';

import 'shop_test.dart' show shop;

class _MockRepository extends Mock implements ShopsRepository;

const _offline = AppFailure(kind: FailureKind.network, message: 'No internet');

void main() {
  late _MockRepository repository;
  setUp(() => repository = _MockRepository());

  blocTest<ShopsCubit, ShopsState>(
    'loads, then filters by name, area or phone on the phone',
    setUp: () => when(() => repository.shops()).thenAnswer(
      (_) async => Ok(
        ShopList([
          shop('Malabar Traders', area: 'Palayam'),
          shop('Fresh Mart', area: 'Kallai', phone: '+919847100001'),
        ]),
      ),
    ),
    build: () => ShopsCubit(repository),
    act: (cubit) async {
      await cubit.load();
      cubit.search('kall');
    },
    verify: (cubit) {
      final state = cubit.state as ShopsLoaded;
      expect(state.groups.single.shops.single.name, 'Fresh Mart');
    },
  );

  blocTest<ShopsCubit, ShopsState>(
    'a failed refresh keeps the list on screen',
    setUp: () => when(() => repository.shops()).thenAnswer((_) async => Ok(ShopList([shop('Malabar Traders')]))),
    build: () => ShopsCubit(repository),
    act: (cubit) async {
      await cubit.load();
      when(() => repository.shops()).thenAnswer((_) async => const Err(_offline));
      await cubit.load();
    },
    expect: () => [isA<ShopsLoading>(), isA<ShopsLoaded>()],
  );

  blocTest<ShopsCubit, ShopsState>(
    'a failed first load shows the failure',
    setUp: () => when(() => repository.shops()).thenAnswer((_) async => const Err(_offline)),
    build: () => ShopsCubit(repository),
    act: (cubit) => cubit.load(),
    expect: () => [isA<ShopsLoading>(), isA<ShopsFailed>()],
  );

  blocTest<ShopDetailCubit, ShopDetailState>(
    'needs both the shop and its activity',
    setUp: () {
      when(() => repository.shop('s1')).thenAnswer((_) async => Ok(shop('Malabar Traders')));
      when(() => repository.activity('s1')).thenAnswer((_) async => const Err(_offline));
    },
    build: () => ShopDetailCubit(repository, 's1'),
    act: (cubit) => cubit.load(),
    expect: () => [isA<ShopDetailLoading>(), isA<ShopDetailFailed>()],
  );
}
