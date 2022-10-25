import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
      name: 'Soft Drink',
      imageUrl: 'https://source.unsplash.com/gySMaocSdqs/600x300',
    ),
    Category(
      name: 'Smoothies',
      imageUrl: 'https://source.unsplash.com/gySMaocSdqs/600x300',
    ),
    Category(
      name: 'Water',
      imageUrl: 'https://source.unsplash.com/gySMaocSdqs/600x300',
    ),
  ];
}
