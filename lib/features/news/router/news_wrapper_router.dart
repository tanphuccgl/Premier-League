import 'package:app/features/profile/router/news_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsWrapperPage extends StatelessWidget {
  const NewsWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: (_) => context.read<NewsCoordinator>(),
      child: context.read<NewsCoordinator>().getNavigator(),
    );
  }
}
