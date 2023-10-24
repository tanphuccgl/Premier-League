import 'package:app/features/common/pages/not_found_page.dart';
import 'package:app/features/dashboard/pages/dashboard_page.dart';
import 'package:app/features/loading/splash_page.dart';
import 'package:app/router/router_name.dart';
import 'package:flutter/material.dart';

class XAppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case XRouterName.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case XRouterName.dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardPage());
      default:
        return MaterialPageRoute(
          builder: (_) => const NotFoundPage(),
        );
    }
  }
}
