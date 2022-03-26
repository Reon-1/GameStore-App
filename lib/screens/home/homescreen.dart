// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../widget/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Gamer's Quest Nepal"),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
