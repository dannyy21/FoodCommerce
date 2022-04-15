
import 'package:flutter/material.dart';
import 'package:foodcommerce/UI/screens.dart';
import 'package:foodcommerce/models/models.dart';

class AppRouter{
    static Route onGenerateRoute(RouteSettings settings){
      print('this is route: ${settings.name}');

      switch(settings.name){
        case '/':
          return HomeScreen.route();
        case HomeScreen.routeName:
            return HomeScreen.route();
        case CartScreen.routeName:
            return CartScreen.route();
        case ProductScreen.routeName:
            return ProductScreen.route(product: settings.arguments as Product);
        case CatalogScreen.routeName:
            return CatalogScreen.route(category: settings.arguments as Category);
        case WishScreen.routeName:
            return WishScreen.route();

        default:
          return _errorRoute();
      }
    }
    static Route _errorRoute(){
        return MaterialPageRoute(
        settings:RouteSettings(name: '/error'),
        builder: (_) => Scaffold(appBar: AppBar(title: Text('error'),),
    ));
    }
}