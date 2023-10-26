import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fixtures_state.dart';

class FixturesBloc extends Cubit<FixturesState> {
  FixturesBloc() : super(const FixturesState());
}
