// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Container(
        //contains all the icons and info
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                //adding bottom icons
                icon: Icon(
                  Icons.home,
                  color: Colors.teal,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                }),
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.teal,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                }),
            IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.teal,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/user');
                }),
          ],
        ),
      ),
    );
  }
}
