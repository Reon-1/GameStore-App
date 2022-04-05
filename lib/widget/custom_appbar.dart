// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //creates top app bar
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Center(
        child: Container(
          color: Colors.black,
          padding: const EdgeInsets
              .symmetric(), //alligns the contents with horizontal and vertical bars
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: Colors.white)),
        ),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(context, '/wishlist');
            })
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
