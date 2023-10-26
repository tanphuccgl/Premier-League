import 'package:app/features/seasons/router/seasons_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeasonsWrapperPage extends StatelessWidget {
  const SeasonsWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: (_) => context.read<SeasonsCoordinator>(),
      child: context.read<SeasonsCoordinator>().getNavigator(),
    );
  }
}
