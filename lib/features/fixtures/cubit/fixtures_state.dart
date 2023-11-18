// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'fixtures_bloc.dart';

class FixturesState extends Equatable {
  final MatchModel data;
  const FixturesState(this.data);

  @override
  List<Object?> get props => [data];

  FixturesState copyWith({
    MatchModel? data,
  }) {
    return FixturesState(
      data ?? this.data,
    );
  }
}
