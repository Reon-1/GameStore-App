// ignore_for_file: prefer_const_constructors

import 'package:equatable/equatable.dart';

//list of prodcts
class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.isPopular,
    required this.isRecommended,
    required this.price,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        isPopular,
        isRecommended,
        price,
      ];

  static List<Product> products = [
    Product(
        name: 'ApexLegends',
        category: 'FPS',
        imageUrl:
            'https://play-lh.googleusercontent.com/8XT0BJlCa85KhTj0yLnMcXwiHZeHLmrkqZwmp0omrzROgi-rgJJp2CDYhIVpZFYWyw',
        isPopular: true,
        isRecommended: true,
        price: 2000),
    Product(
        name: 'Payday 2',
        category: 'FPS',
        imageUrl:
            'https://cdn.mos.cms.futurecdn.net/CaBuWPqTa2jyxVit8AzH9E-970-80.jpg.webp',
        isPopular: true,
        isRecommended: false,
        price: 3500),
    Product(
        name: 'Team Fortress 2',
        category: 'FPS',
        imageUrl:
            'https://cdn.mos.cms.futurecdn.net/rWtRjHfbhDKEFyocPjf6NT-970-80.jpg.webp',
        isPopular: true,
        isRecommended: true,
        price: 3000),
    Product(
        name: 'Insurgency: Sandstorm',
        category: 'FPS',
        imageUrl:
            'https://cdn.mos.cms.futurecdn.net/ag5MuTMfDLkvJLJXnpMgPh-970-80.jpg.webp',
        isPopular: true,
        isRecommended: true,
        price: 4000),
  ];
}
