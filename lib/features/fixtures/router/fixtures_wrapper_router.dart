import 'package:app/features/fixtures/router/fixtures_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FixturesWrapperPage extends StatelessWidget {
  const FixturesWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: (_) => context.read<FixturesCoordinator>(),
      child: context.read<FixturesCoordinator>().getNavigator(),
    );
  }
}
