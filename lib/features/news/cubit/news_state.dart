// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'news_bloc.dart';

class NewsState extends Equatable {
  final List<NewModel> data;
  const NewsState({
    this.data = const [],
  });

  @override
  List<Object?> get props => [
        data,
      ];

  NewsState copyWith({
    List<NewModel>? data,
  }) {
    return NewsState(
      data: data ?? this.data,
    );
  }
}
