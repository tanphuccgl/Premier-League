import 'package:app/network/model/club_model.dart';
import 'package:app/network/model/player_model.dart';
import 'package:app/network/repositories/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

part 'seasons_state.dart';

class SeasonsBloc extends Cubit<SeasonsState> {
  SeasonsBloc() : super(SeasonsState()) {
    getPlayerModel();
    getClubModel();
  }

  Domain get _domain => GetIt.I<Domain>();

  Future<void> getPlayerModel() async {
    final result = await _domain.repo.getPlayerModel();
    if (result.isSuccess) {
      emit(state.copyWith(playerModel: [...result.data!]));
    } else {}
  }

  Future<void> getClubModel() async {
    final result = await _domain.repo.getClubModel();
    if (result.isSuccess) {
      emit(state.copyWith(clubModel: [...result.data!]));
    } else {}
  }
}
