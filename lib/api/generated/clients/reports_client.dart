// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/available_reports_dto_output.dart';
import '../models/dashboard_dto_output.dart';
import '../models/group_by.dart';
import '../models/report.dart';
import '../models/report_result_dto_output.dart';
import '../models/search_result_dto_output.dart';

part 'reports_client.g.dart';

@RestApi()
abstract class ReportsClient {
  factory ReportsClient(Dio dio, {String? baseUrl}) = _ReportsClient;

  @GET('/api/v1/dashboard')
  Future<DashboardDtoOutput> reportsControllerDashboard({
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
  });

  @GET('/api/v1/reports')
  Future<AvailableReportsDtoOutput> reportsControllerAvailable();

  @GET('/api/v1/reports/{report}')
  Future<ReportResultDtoOutput> reportsControllerRun({
    @Path('report') required Report report,
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
    @Query('groupBy') GroupBy? groupBy,
    @Query('customerId') String? customerId,
    @Query('agentId') String? agentId,
    @Query('accountId') String? accountId,
  });

  @GET('/api/v1/reports/{report}/export.xlsx')
  Future<void> reportsControllerExport({
    @Path('report') required Report report,
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
    @Query('groupBy') GroupBy? groupBy,
    @Query('customerId') String? customerId,
    @Query('agentId') String? agentId,
    @Query('accountId') String? accountId,
  });

  @GET('/api/v1/search')
  Future<SearchResultDtoOutput> reportsControllerSearch({
    @Query('q') required String q,
  });
}
