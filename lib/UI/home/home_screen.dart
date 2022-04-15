import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodcommerce/models/models.dart';
import 'package:foodcommerce/widgets/widgets.dart';

import '../../models/category_models.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);
  static const String routeName = '/';
  static Route route(){
    return MaterialPageRoute(
    settings:RouteSettings(name: routeName),
    builder: (_)=>HomeScreen()
    );
  }
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: CustomAppbarWidget(title: 'FoodCommerce'),
      bottomNavigationBar: CustomNavbar(),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height
            ),
            items: Category.categories.map((category)=> HeroCarouselCard(category: category)).toList(),
          ),
          SectionTitle(title: "RECOMMENDED"),
          ProductCarousel(products: Product.products.where((product)=>product.isRecommended).toList()
          ),
          SectionTitle(title: "Most Popular"),
          ProductCarousel(products: Product.products.where((product)=>product.isPopular).toList()
          )],
          
          
      ),

    );
  }
}

