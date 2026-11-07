import 'package:green_ledger_mobile/core/result.dart';

/// Why stock was lost (ux-design 4.7).
enum WastageReason {
  rotten('Rotten'),
  weightLoss('Weight loss'),
  sample('Sample'),
  ownUse('Own use');

  WastageReason(this.label);

  final String label;
}

class WastageProduct {
  const WastageProduct({required this.id, required this.name, required this.stockUnit});

  final String id;
  final String name;

  /// `kg` (3 decimals on the numpad) or `piece` (whole numbers).
  final String stockUnit;

  int get decimals => stockUnit == 'kg' ? 3 : 0;
}

/// A recorded wastage: posted with its number, or waiting for approval (above the
/// owner's threshold; no number yet). Never its value: the godown sees no money.
class WastageResult {
  const WastageResult({required this.waiting, this.number});

  final bool waiting;
  final String? number;
}

abstract interface class WastageRepository {
  Future<Result<List<WastageProduct>>> products();

  /// Uploads the photo (if any), then records the wastage; [entryDate] is fixed when the
  /// entry starts. A network failure keeps a draft.
  Future<Result<WastageResult>> record({
    required WastageProduct product,
    required String quantity,
    required WastageReason reason,
    required String entryDate,
    required String idempotencyKey,
    String? photoPath,
  });
}
