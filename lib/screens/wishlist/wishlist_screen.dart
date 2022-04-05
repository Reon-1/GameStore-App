// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamestore_app/blocs/bloc/wishlist_bloc.dart';
import 'package:gamestore_app/models/models.dart';

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
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          // ignore: dead_code
          if (state is WishlistLoaded) {
            return GridView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 16.0,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 2.4),
              itemCount: state.wishList.products.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: ProductCard(
                    product: state.wishList.products[index],
                    widthFactor: 1.1,
                    leftPosition: 100,
                    isWishlist: true,
                    //position of the name and price box in wishlist
                  ),
                );
              },
            );
          } else
            return Text('Something is wrong');
        },
      ),
    );
  }
}
