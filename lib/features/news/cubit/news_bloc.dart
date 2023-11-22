import 'package:app/network/model/new_model.dart';
import 'package:app/network/repositories/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

part 'news_state.dart';

class NewsBloc extends Cubit<NewsState> {
  NewsBloc() : super(NewsState()) {
    getNewModel();
  }

  Domain get _domain => GetIt.I<Domain>();

  Future<void> getNewModel() async {
    final result = await _domain.repo.getNewModel();
    if (result.isSuccess) {
      emit(state.copyWith(data: [...result.data!]));
    } else {}
  }
}
