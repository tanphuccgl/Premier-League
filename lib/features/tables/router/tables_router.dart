import 'package:app/features/common/pages/not_found_page.dart';
import 'package:app/features/tables/pages/tables_page.dart';
import 'package:app/router/base_coordinator.dart';
import 'package:flutter/material.dart';

class XTablesRouterName {
  static const String tables = '/tables';
}

class TablesCoordinator extends BaseCoordinator {
  @override
  String get initialRoute => XTablesRouterName.tables;

  @override
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case XTablesRouterName.tables:
        return MaterialPageRoute(builder: (_) => const TablesPage());

      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}
