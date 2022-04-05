// ignore_for_file: prefer_const_constructors, no_duplicate_case_values, avoid_print

import 'package:flutter/material.dart';
import 'package:gamestore_app/models/models.dart';
import 'package:gamestore_app/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route:${settings.name}');
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      //provies names for the selected
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('Error')),
      ),
    );
  }
}
