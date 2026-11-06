// Copies the backend contract into api/openapi.json, the input of swagger_parser.
//
//   fvm dart run tool/sync_openapi.dart [path/to/backend-go/openapi.json]
//
// Fixes applied (the generator can't express them):
// - boolean enums (`{ok: true}` responses) become plain booleans.
import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  final source = File(args.isNotEmpty ? args.first : '../green-ledger/backend-go/openapi.json');
  if (!source.existsSync()) {
    stderr.writeln('Not found: ${source.path}');
    exit(1);
  }
  final spec = jsonDecode(source.readAsStringSync()) as Object?;
  final target = File('api/openapi.json')
    ..createSync(recursive: true)
    ..writeAsStringSync('${const JsonEncoder.withIndent('  ').convert(_fix(spec))}\n');
  stdout.writeln('Wrote ${target.path} from ${source.path}');
}

Object? _fix(Object? node) {
  if (node is Map<String, Object?>) {
    final out = <String, Object?>{for (final entry in node.entries) entry.key: _fix(entry.value)};
    if (out['type'] == 'boolean') out.remove('enum');
    return out;
  }
  if (node is List<Object?>) return node.map(_fix).toList();
  return node;
}
