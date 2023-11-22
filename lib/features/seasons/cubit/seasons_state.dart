// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'seasons_bloc.dart';

class SeasonsState extends Equatable {
  final List<ClubModel> clubModel;
  final List<PlayerModel> playerModel;
  const SeasonsState({this.clubModel = const [], this.playerModel = const []});

  @override
  List<Object?> get props => [
        clubModel,
        playerModel,
      ];

  SeasonsState copyWith({
    List<ClubModel>? clubModel,
    List<PlayerModel>? playerModel,
  }) {
    return SeasonsState(
      clubModel: clubModel ?? this.clubModel,
      playerModel: playerModel ?? this.playerModel,
    );
  }
}
