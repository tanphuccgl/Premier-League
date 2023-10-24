import 'package:app/features/card_student/pages/card_student_page.dart';
import 'package:app/features/common/pages/not_found_page.dart';
import 'package:app/router/base_coordinator.dart';
import 'package:flutter/material.dart';

class XCardStudentRouterName {
  static const String card = '/card';
}

class CardStudentCoordinator extends BaseCoordinator {
  @override
  String get initialRoute => XCardStudentRouterName.card;

  @override
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case XCardStudentRouterName.card:
        return MaterialPageRoute(builder: (_) => const CardStudentPage());

      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}
