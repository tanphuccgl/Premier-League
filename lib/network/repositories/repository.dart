import 'package:app/network/model/club_model.dart';
import 'package:app/network/model/common/result.dart';
import 'package:app/network/model/match_model.dart';
import 'package:app/network/model/new_model.dart';
import 'package:app/network/model/player_model.dart';
import 'package:app/network/model/table_model.dart';

abstract class Repository {
  Future<XResult<List<MatchModel>>> getMatch();
  Future<XResult<List<ClubModel>>> getClubModel();
  Future<XResult<List<NewModel>>> getNewModel();
  Future<XResult<List<PlayerModel>>> getPlayerModel();
  Future<XResult<List<TableModel>>> getTableModel();
}
