import 'dart:convert';

import 'package:app/network/model/club_model.dart';
import 'package:app/network/model/common/result.dart';
import 'package:app/network/model/match_model.dart';
import 'package:app/network/model/new_model.dart';
import 'package:app/network/model/player_model.dart';
import 'package:app/network/model/table_model.dart';
import 'package:app/network/repositories/data_mock/club_data_mock.dart';
import 'package:app/network/repositories/data_mock/match_data_mock.dart';
import 'package:app/network/repositories/data_mock/new_data_mock.dart';
import 'package:app/network/repositories/data_mock/player_data_mock.dart';
import 'package:app/network/repositories/data_mock/table_data_mock.dart';
import 'package:app/network/repositories/domain.dart';
import 'package:app/network/repositories/repository.dart';
import 'package:app/utils/helper/logger.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

class RepositoryMockImpl extends Repository {
  @override
  Future<XResult<List<ClubModel>>> getClubModel() async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    try {
      dioAdapter.onGet(
        Endpoints.getClubModel,
        (server) => server.reply(
          200,
          jsonDecode(clubData),
          delay: const Duration(seconds: Endpoints.delayMock),
        ),
      );

      final response = await dio.get(Endpoints.getClubModel);

      final list = response.data as List;
      final result = list.map((e) => ClubModel.fromJson(e)).toList();

      return response.statusCode == 200
          ? XResult.success(result)
          : XResult.error("Error");
    } catch (e, track) {
      LoggerHelper.error('> GET getClubModel TODAY CATCH Error< $e $track');
      return XResult.exception(e);
    }
  }

  @override
  Future<XResult<List<MatchModel>>> getMatch() async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    try {
      dioAdapter.onGet(
        Endpoints.getMatch,
        (server) => server.reply(
          200,
          jsonDecode(matchData),
          delay: const Duration(seconds: Endpoints.delayMock),
        ),
      );

      final response = await dio.get(Endpoints.getMatch);

      final list = response.data as List;
      final result = list.map((e) => MatchModel.fromJson(e)).toList();

      return response.statusCode == 200
          ? XResult.success(result)
          : XResult.error("Error");
    } catch (e, track) {
      LoggerHelper.error('> GET getMatch TODAY CATCH Error< $e $track');
      return XResult.exception(e);
    }
  }

  @override
  Future<XResult<List<NewModel>>> getNewModel() async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    try {
      dioAdapter.onGet(
        Endpoints.getNewModel,
        (server) => server.reply(
          200,
          json.decode(newData),
          delay: const Duration(seconds: Endpoints.delayMock),
        ),
      );

      final response = await dio.get(Endpoints.getNewModel);

      final list = response.data as List;
      final result = list.map((e) => NewModel.fromJson(e)).toList();

      return response.statusCode == 200
          ? XResult.success(result)
          : XResult.error("Error");
    } catch (e, track) {
      LoggerHelper.error('> GET getNewModel TODAY CATCH Error< $e $track');
      return XResult.exception(e);
    }
  }

  @override
  Future<XResult<List<PlayerModel>>> getPlayerModel() async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    try {
      dioAdapter.onGet(
        Endpoints.getPlayerModel,
        (server) => server.reply(
          200,
          jsonDecode(playerData),
          delay: const Duration(seconds: Endpoints.delayMock),
        ),
      );

      final response = await dio.get(Endpoints.getPlayerModel);

      final list = response.data as List;
      final result = list.map((e) => PlayerModel.fromJson(e)).toList();

      return response.statusCode == 200
          ? XResult.success(result)
          : XResult.error("Error");
    } catch (e, track) {
      LoggerHelper.error('> GET getPlayerModel TODAY CATCH Error< $e $track');
      return XResult.exception(e);
    }
  }

  @override
  Future<XResult<List<TableModel>>> getTableModel() async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    try {
      dioAdapter.onGet(
        Endpoints.getTableModel,
        (server) => server.reply(
          200,
          jsonDecode(tableData),
          delay: const Duration(seconds: Endpoints.delayMock),
        ),
      );

      final response = await dio.get(Endpoints.getTableModel);

      final list = response.data as List;
      final result = list.map((e) => TableModel.fromJson(e)).toList();

      return response.statusCode == 200
          ? XResult.success(result)
          : XResult.error("Error");
    } catch (e, track) {
      LoggerHelper.error('> GET getTableModel CATCH Error< $e $track');
      return XResult.exception(e);
    }
  }
}
