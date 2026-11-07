// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_contact.freezed.dart';
part 'support_contact.g.dart';

@Freezed()
abstract class SupportContact with _$SupportContact {
  const factory SupportContact({required String? phone, required String? whatsapp, required String? email}) =
      _SupportContact;

  factory SupportContact.fromJson(Map<String, Object?> json) => _$SupportContactFromJson(json);
}
