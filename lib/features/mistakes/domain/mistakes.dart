import 'package:green_ledger_mobile/core/result.dart';

/// Why the agent thinks the entry is wrong (ux-design CR 2).
enum MistakeReason {
  wrongAmount('Wrong amount'),
  wrongShop('Wrong shop'),
  wrongProduct('Wrong product'),
  wrongPayment('Wrong payment'),
  duplicate('Duplicate'),
  other('Other');

  MistakeReason(this.label);

  final String label;
}

/// The kinds of entry an agent can report; returns have no agent screen yet.
enum MistakeEntry { bill, receipt }

/// The entry being reported, as shown at the top of the sheet.
class MistakeTarget {
  const MistakeTarget({required this.entry, required this.id, required this.number, required this.total});

  final MistakeEntry entry;
  final String id;
  final String number;
  final int total;
}

/// One of the agent's reports on My reports.
class MistakeReport {
  const MistakeReport({
    required this.id,
    required this.number,
    required this.shopName,
    required this.total,
    required this.reason,
    required this.open,
    required this.createdAt,
    this.note,
    this.entryCancelled = false,
    this.closeNote,
  });

  final String id;

  /// The entry's number (B-0012, R-0003).
  final String number;
  final String shopName;
  final int total;

  /// Null when the server sends a reason this app doesn't know yet.
  final MistakeReason? reason;
  final String? note;
  final bool open;
  final DateTime createdAt;

  /// The office has cancelled the entry (the usual fix).
  final bool entryCancelled;

  /// The office's note when it closed the report.
  final String? closeNote;
}

abstract interface class MistakesRepository {
  /// Reports [target] with [idempotencyKey] (reused on a retry of the same report).
  Future<Result<void>> report({
    required MistakeTarget target,
    required MistakeReason reason,
    required String idempotencyKey,
    String note = '',
  });

  /// The agent's own reports, newest first.
  Future<Result<List<MistakeReport>>> mine();
}

/// What blocks SEND, in plain words; null when the report can be sent. Other needs a note.
String? mistakeProblem({required MistakeReason? reason, required String note}) {
  if (reason == null) return 'Choose what is wrong';
  if (reason == MistakeReason.other && note.trim().isEmpty) return 'Write what is wrong';
  return null;
}
