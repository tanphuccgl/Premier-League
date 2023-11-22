// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'fixtures_bloc.dart';

class FixturesState extends Equatable {
  final List<MatchModel> data;
  const FixturesState({this.data = const []});

  @override
  List<Object?> get props => [data];

  FixturesState copyWith({
    List<MatchModel>? data,
  }) {
    return FixturesState(
      data: data ?? this.data,
    );
  }
}
