import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/launch/contact_launcher.dart';
import 'package:green_ledger_mobile/features/shops/data/shop_mapper.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';
import 'package:green_ledger_mobile/features/shops/presentation/widgets/last_visit_text.dart';

Shop shop(String name, {String? area, int outstanding = 0, int creditLimit = 0, String? phone, String? whatsapp}) =>
    Shop(
      id: name,
      name: name,
      area: area,
      outstanding: outstanding,
      overdue: 0,
      creditLimit: creditLimit,
      phone: phone,
      whatsapp: whatsapp,
    );

Map<String, Object?> billJson({String status = 'posted', int open = 50000, String dueDate = '2026-11-07'}) => {
  'id': 'b1',
  'number': 'B-0012',
  'billDate': '2026-11-01',
  'dueDate': dueDate,
  'customer': {'id': 'c1', 'name': 'Malabar Traders'},
  'subtotal': 100000,
  'rounding': 0,
  'total': 100000,
  'paid': 100000 - open,
  'open': open,
  'paymentStatus': open == 0 ? 'paid' : 'partly_paid',
  'status': status,
  'issues': <Object>[],
  'approvalId': null,
  'notes': null,
  'createdBy': null,
  'createdAt': '2026-11-01T05:00:00.000Z',
  'cancelReason': null,
};

void main() {
  final now = DateTime.utc(2026, 11, 7, 6);

  test('groups shops by area A–Z, no area last, keeping their order', () {
    final groups = groupByArea([
      shop('Zam Stores', area: 'Palayam'),
      shop('No Area Mart'),
      shop('Ajay Traders', area: 'kallai'),
      shop('Bava Stores', area: 'Palayam'),
      shop('Blank Area', area: '  '),
    ]);
    expect(groups.map((g) => g.area), ['kallai', 'Palayam', null]);
    expect(groups[1].shops.map((s) => s.name), ['Zam Stores', 'Bava Stores']);
    expect(groups[2].shops.map((s) => s.name), ['No Area Mart', 'Blank Area']);
  });

  test('credit left never goes below zero; WhatsApp falls back to the phone', () {
    expect(shop('a', creditLimit: 5000000, outstanding: 1300000).creditLeft, 3700000);
    expect(shop('a', creditLimit: 100, outstanding: 500).creditLeft, 0);
    expect(shop('a').cashOnly, isTrue);
    expect(shop('a', phone: '+919847100001').whatsappNumber, '+919847100001');
    expect(shop('a', phone: '+919847100001', whatsapp: '+919847100009').whatsappNumber, '+919847100009');
    expect(ContactLauncher.whatsAppUri('+919847100009').toString(), 'https://wa.me/919847100009');
  });

  test('last visit in plain words', () {
    expect(lastVisitText(null), 'Not visited yet');
    expect(
      lastVisitText(
        const LastVisit(date: '2026-11-06', outcome: VisitOutcome.promised, byName: 'Ravi'),
        now: now,
      ),
      'Visited Yesterday · Promised',
    );
  });

  test('maps a customer with its last visit', () {
    final s = shopFromDto(
      api.CustomerDtoOutput.fromJson({
        'id': 'c1',
        'name': 'Malabar Traders',
        'phone': '+919847100001',
        'whatsapp': null,
        'area': 'Palayam',
        'address': null,
        'notes': null,
        'priceGroup': null,
        'creditLimit': 5000000,
        'creditDays': 7,
        'agent': null,
        'openingBalance': 0,
        'status': 'active',
        'outstanding': 1300000,
        'overdue': 500000,
        'lastVisit': {
          'visitDate': '2026-11-05',
          'outcome': 'not_available',
          'user': {'id': 'u1', 'name': 'Ravi'},
        },
        'createdAt': '2026-10-01T05:00:00.000Z',
      }),
    );
    expect(s.overdue, 500000);
    expect(s.lastVisit?.date, '2026-11-05');
    expect(s.lastVisit?.outcome, VisitOutcome.notAvailable);
  });

  test('a bill is overdue only after its due date, paid when nothing is open', () {
    BillState state(Map<String, Object?> json) =>
        billFromDto(api.SalesBillSummaryDtoOutput.fromJson(json), now: now).state;
    expect(state(billJson()), BillState.due); // due today
    expect(state(billJson(dueDate: '2026-11-06')), BillState.overdue);
    expect(state(billJson(open: 0, dueDate: '2026-11-01')), BillState.paid);
    expect(state(billJson(status: 'pending_approval')), BillState.waiting);
    expect(state(billJson(status: 'cancelled')), BillState.cancelled);
  });
}
