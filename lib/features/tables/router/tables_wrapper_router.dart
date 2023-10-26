import 'package:app/features/tables/router/tables_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TablesWrapperPage extends StatelessWidget {
  const TablesWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: (_) => context.read<TablesCoordinator>(),
      child: context.read<TablesCoordinator>().getNavigator(),
    );
  }
}
