import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'news_state.dart';

class NewsBloc extends Cubit<NewsState> {
  NewsBloc() : super(const NewsState());
}
