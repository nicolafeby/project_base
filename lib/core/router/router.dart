import 'package:flutter/material.dart';
import 'package:project_base/core/router/router_constant.dart';
import 'package:project_base/presentation/home/menu/menu_page.dart';
import 'package:project_base/presentation/home/page/home_page.dart';

class Router {
  Route generateRouter(Widget page, RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => getPageRoute(settings),
    );
  }

  Widget getPageRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterConstant.homePage:
        return const HomePage();
      case RouterConstant.menuPage:
        return const MenuPage();
      default:
        return const HomePage();
    }
  }

  Route? generateAppRoutes(RouteSettings settings) {
    Widget getRoutedWidget = getPageRoute(settings);
    return generateRouter(getRoutedWidget, settings);
  }
}
