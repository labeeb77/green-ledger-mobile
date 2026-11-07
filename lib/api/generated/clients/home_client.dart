// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/agent_home_dto_output.dart';
import '../models/agents_today_dto_output.dart';
import '../models/godown_home_dto_output.dart';

part 'home_client.g.dart';

@RestApi()
abstract class HomeClient {
  factory HomeClient(Dio dio, {String? baseUrl}) = _HomeClient;

  @GET('/api/v1/home/agent')
  Future<AgentHomeDtoOutput> homeControllerAgent();

  @GET('/api/v1/home/godown')
  Future<GodownHomeDtoOutput> homeControllerGodown();

  @GET('/api/v1/home/agents-today')
  Future<AgentsTodayDtoOutput> homeControllerAgentsToday();
}
