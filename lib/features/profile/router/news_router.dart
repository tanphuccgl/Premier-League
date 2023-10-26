import 'package:app/features/common/pages/not_found_page.dart';
import 'package:app/features/news/pages/news_page.dart';
import 'package:app/router/base_coordinator.dart';
import 'package:flutter/material.dart';

class XNewsRouterName {
  static const String news = '/news';
}

class NewsCoordinator extends BaseCoordinator {
  @override
  String get initialRoute => XNewsRouterName.news;

  @override
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case XNewsRouterName.news:
        return MaterialPageRoute(builder: (_) => const NewsPage());

      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}
