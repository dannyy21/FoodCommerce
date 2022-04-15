import 'package:equatable/equatable.dart';

class Category extends Equatable{
  final String name;
  final String imageUrl;

  const Category({
    required this.name, required this.imageUrl
  });

  @override
  List<Object> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
      name: 'Soft Drink',
      imageUrl: 'https://media.istockphoto.com/photos/cola-splash-on-red-background-picture-id177009876'
    ),
    Category(
      name: 'Hard Drink',
      imageUrl: 'https://media.istockphoto.com/photos/cola-splash-on-red-background-picture-id177009876'
    )
  ];
}