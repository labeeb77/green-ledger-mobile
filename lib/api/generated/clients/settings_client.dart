// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/business_settings_dto_output.dart';
import '../models/grant_support_dto.dart';
import '../models/support_status_dto_output.dart';
import '../models/update_business_settings_dto.dart';

part 'settings_client.g.dart';

@RestApi()
abstract class SettingsClient {
  factory SettingsClient(Dio dio, {String? baseUrl}) = _SettingsClient;

  @GET('/api/v1/settings/business')
  Future<BusinessSettingsDtoOutput> settingsControllerGet();

  @PUT('/api/v1/settings/business')
  Future<BusinessSettingsDtoOutput> settingsControllerUpdate({@Body() required UpdateBusinessSettingsDto body});

  @GET('/api/v1/settings/support-access')
  Future<SupportStatusDtoOutput> supportAccessControllerStatus();

  @PUT('/api/v1/settings/support-access')
  Future<SupportStatusDtoOutput> supportAccessControllerGrant({@Body() required GrantSupportDto body});

  @DELETE('/api/v1/settings/support-access')
  Future<SupportStatusDtoOutput> supportAccessControllerRevoke();
}
