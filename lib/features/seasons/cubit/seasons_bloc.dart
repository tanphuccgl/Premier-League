import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'seasons_state.dart';

class SeasonsBloc extends Cubit<SeasonsState> {
  SeasonsBloc() : super(const SeasonsState());
}
