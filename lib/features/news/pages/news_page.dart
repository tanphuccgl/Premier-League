import 'package:app/features/news/cubit/news_bloc.dart';
import 'package:app/features/news/widgets/section_news2.dart';
import 'package:app/features/news/widgets/section_title2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc(),
      child: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                SectionTile2(),
                SizedBox(
                  height: 20,
                ),
                SectionNews2(),
              ],
            )),
          );
        },
      ),
    );
  }
}
