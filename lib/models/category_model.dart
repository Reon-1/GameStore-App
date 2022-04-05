// ignore_for_file: prefer_const_constructors

import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl, //both required to display images
  });

  @override
  List<Object?> get props =>
      [name, imageUrl]; //has lists of games to show on slider
  static List<Category> categories = [
    Category(
        name: 'RPG',
        imageUrl:
            'https://image.api.playstation.com/vulcan/ap/rnd/202110/2000/aGhopp3MHppi7kooGE2Dtt8C.png'),
    Category(
        name: 'Adventure',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/en/6/69/Horizon_Forbidden_West_cover_art.jpg'),
    Category(
        name: 'FPS',
        imageUrl:
            'https://gamesave.store/wp-content/uploads/2022/01/dying_light_2_pc_gamesave_1.jpg'),
  ];
}
