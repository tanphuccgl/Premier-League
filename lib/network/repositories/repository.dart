import 'package:app/network/model/club_model.dart';
import 'package:app/network/model/common/result.dart';
import 'package:app/network/model/match_model.dart';
import 'package:app/network/model/new_model.dart';
import 'package:app/network/model/player_model.dart';
import 'package:app/network/model/table_model.dart';

abstract class Repository {
  Future<XResult<MatchModel>> getMatch();
  Future<XResult<ClubModel>> getClubModel();
  Future<XResult<NewModel>> getNewModel();
  Future<XResult<PlayerModel>> getPlayerModel();
  Future<XResult<TableModel>> getTableModel();
}
