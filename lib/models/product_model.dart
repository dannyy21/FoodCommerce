import 'package:equatable/equatable.dart';

class Product extends Equatable{
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
    required this.price,
    required this.isPopular,
    required this.isRecommended
  });
  @override
  List<Object> get props => [
    name,
    category,
    imageUrl,
    price,
    isPopular,
    isRecommended
  ];
  static List<Product> products = [
    Product(
      name: 'Soft Drink',
      category: 'Soft Drink',
      imageUrl:'',
      price: 5.000,
      isRecommended: true,
      isPopular: false  
    )
  ];
}