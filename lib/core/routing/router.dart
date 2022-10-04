import 'package:demo/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../ui/home_screen/home_screen.dart';

class PageRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text("Page not found")),
          );
        });
    }
  }
}