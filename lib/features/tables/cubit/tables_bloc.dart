import 'package:app/network/model/table_model.dart';
import 'package:app/network/repositories/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

part 'tables_state.dart';

class TableBloc extends Cubit<TableState> {
  TableBloc() : super(TableState()) {
    getTableModel();
  }

  Domain get _domain => GetIt.I<Domain>();

  Future<void> getTableModel() async {
    final result = await _domain.repo.getTableModel();
    if (result.isSuccess) {
      emit(state.copyWith(data: [...result.data!]));
    } else {}
  }
}
