// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gamestore_app/models/models.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                //animated top slider to display gamer products
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: false,
                  initialPage: 2,
                  autoPlay: true,
                ),
                items: Category.categories
                    .map((category) => HeroCarouselCard(category: category))
                    .toList(),
              ),
            ),
            SectionTitle(title: 'RECOMMENDED'),
            ProductCarousel(
                products: Product.products
                    .where((product) => product.isRecommended)
                    .toList()),
            SectionTitle(title: 'MOST POPULAR'),
            ProductCarousel(
                products: Product.products
                    .where((product) => product.isPopular)
                    .toList()),
          ],
        ),
      ),
    );
  }
}
