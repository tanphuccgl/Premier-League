import 'package:app/features/common/pages/not_found_page.dart';
import 'package:app/features/fixtures/pages/fixtures_page.dart';
import 'package:app/router/base_coordinator.dart';
import 'package:flutter/material.dart';

class XFixturesRouterName {
  static const String fixtures = '/fixtures';
}

class FixturesCoordinator extends BaseCoordinator {
  @override
  String get initialRoute => XFixturesRouterName.fixtures;

  @override
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case XFixturesRouterName.fixtures:
        return MaterialPageRoute(builder: (_) => const FixturesPage());

      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}
