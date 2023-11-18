// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'seasons_bloc.dart';

class SeasonsState extends Equatable {
  final ClubModel clubModel;
  final PlayerModel playerModel;
  const SeasonsState(this.clubModel, this.playerModel);

  @override
  List<Object?> get props => [
        clubModel,
        playerModel,
      ];

  SeasonsState copyWith({
    ClubModel? clubModel,
    PlayerModel? playerModel,
  }) {
    return SeasonsState(
      clubModel ?? this.clubModel,
      playerModel ?? this.playerModel,
    );
  }
}
