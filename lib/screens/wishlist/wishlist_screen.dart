// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../widget/widgets.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = '/wishlist';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => WishlistScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Wishlist"),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
