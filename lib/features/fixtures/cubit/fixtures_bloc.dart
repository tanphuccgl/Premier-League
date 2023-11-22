import 'package:app/network/model/match_model.dart';
import 'package:app/network/repositories/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

part 'fixtures_state.dart';

class FixturesBloc extends Cubit<FixturesState> {
  FixturesBloc() : super(FixturesState()) {
    getMatch();
  }

  Domain get _domain => GetIt.I<Domain>();

  Future<void> getMatch() async {
    final result = await _domain.repo.getMatch();
    if (result.isSuccess) {
      emit(state.copyWith(data: [...result.data!]));
    } else {}
  }
}
