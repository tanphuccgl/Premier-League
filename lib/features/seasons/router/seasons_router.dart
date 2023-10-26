import 'package:app/features/common/pages/not_found_page.dart';
import 'package:app/features/seasons/pages/seasons_page.dart';
import 'package:app/router/base_coordinator.dart';
import 'package:flutter/material.dart';

class XSeasonsRouterName {
  static const String seasons = '/seasons';
}

class SeasonsCoordinator extends BaseCoordinator {
  @override
  String get initialRoute => XSeasonsRouterName.seasons;

  @override
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case XSeasonsRouterName.seasons:
        return MaterialPageRoute(builder: (_) => const SeasonsPage());

      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}
