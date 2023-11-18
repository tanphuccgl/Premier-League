// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'news_bloc.dart';

class NewsState extends Equatable {
  final NewModel data;
  const NewsState(
    this.data,
  );

  @override
  List<Object?> get props => [
        data,
      ];

  NewsState copyWith({
    NewModel? data,
  }) {
    return NewsState(
      data ?? this.data,
    );
  }
}
