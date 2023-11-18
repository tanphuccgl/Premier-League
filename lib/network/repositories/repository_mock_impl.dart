import 'dart:convert';

import 'package:app/network/model/club_model.dart';
import 'package:app/network/model/common/result.dart';
import 'package:app/network/model/match_model.dart';
import 'package:app/network/model/new_model.dart';
import 'package:app/network/model/player_model.dart';
import 'package:app/network/model/table_model.dart';
import 'package:app/network/repositories/data_mock.dart';
import 'package:app/network/repositories/domain.dart';
import 'package:app/network/repositories/repository.dart';
import 'package:app/utils/helper/logger.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

class RepositoryMockImpl extends Repository {
  @override
  Future<XResult<ClubModel>> getClubModel() async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    try {
      dioAdapter.onGet(
        Endpoints.getClubModel,
        (server) => server.reply(
          200,
          jsonDecode(DataMock.clubData),
          delay: const Duration(seconds: Endpoints.delayMock),
        ),
      );

      final response = await dio.get(Endpoints.getClubModel);

      final result = ClubModel.fromJson(response.data);

      return response.statusCode == 200
          ? XResult.success(result)
          : XResult.error("Error");
    } catch (e, track) {
      LoggerHelper.error('> GET getClubModel TODAY CATCH Error< $e $track');
      return XResult.exception(e);
    }
  }

  @override
  Future<XResult<MatchModel>> getMatch() async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    try {
      dioAdapter.onGet(
        Endpoints.getMatch,
        (server) => server.reply(
          200,
          jsonDecode(DataMock.matchData),
          delay: const Duration(seconds: Endpoints.delayMock),
        ),
      );

      final response = await dio.get(Endpoints.getMatch);

      final result = MatchModel.fromJson(response.data);

      return response.statusCode == 200
          ? XResult.success(result)
          : XResult.error("Error");
    } catch (e, track) {
      LoggerHelper.error('> GET getMatch TODAY CATCH Error< $e $track');
      return XResult.exception(e);
    }
  }

  @override
  Future<XResult<NewModel>> getNewModel() async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    try {
      dioAdapter.onGet(
        Endpoints.getNewModel,
        (server) => server.reply(
          200,
          jsonDecode(DataMock.newData),
          delay: const Duration(seconds: Endpoints.delayMock),
        ),
      );

      final response = await dio.get(Endpoints.getNewModel);

      final result = NewModel.fromJson(response.data);

      return response.statusCode == 200
          ? XResult.success(result)
          : XResult.error("Error");
    } catch (e, track) {
      LoggerHelper.error('> GET getNewModel TODAY CATCH Error< $e $track');
      return XResult.exception(e);
    }
  }

  @override
  Future<XResult<PlayerModel>> getPlayerModel() async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    try {
      dioAdapter.onGet(
        Endpoints.getPlayerModel,
        (server) => server.reply(
          200,
          jsonDecode(DataMock.playersData),
          delay: const Duration(seconds: Endpoints.delayMock),
        ),
      );

      final response = await dio.get(Endpoints.getPlayerModel);

      final result = PlayerModel.fromJson(response.data);

      return response.statusCode == 200
          ? XResult.success(result)
          : XResult.error("Error");
    } catch (e, track) {
      LoggerHelper.error('> GET getPlayerModel TODAY CATCH Error< $e $track');
      return XResult.exception(e);
    }
  }

  @override
  Future<XResult<TableModel>> getTableModel() async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    try {
      dioAdapter.onGet(
        Endpoints.getTableModel,
        (server) => server.reply(
          200,
          jsonDecode(DataMock.tableData),
          delay: const Duration(seconds: Endpoints.delayMock),
        ),
      );

      final response = await dio.get(Endpoints.getTableModel);

      final result = TableModel.fromJson(response.data);

      return response.statusCode == 200
          ? XResult.success(result)
          : XResult.error("Error");
    } catch (e, track) {
      LoggerHelper.error('> GET getTableModel CATCH Error< $e $track');
      return XResult.exception(e);
    }
  }
}
