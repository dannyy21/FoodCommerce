import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodcommerce/blocs/wishlist/wishlist_bloc.dart';
import 'package:foodcommerce/models/models.dart';
import 'package:foodcommerce/widgets/widgets.dart';

class WishScreen extends StatelessWidget {
  const WishScreen({Key? key}) : super(key: key);
  static const String routeName = '/wish';
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => WishScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(title: 'WishList'),
      bottomNavigationBar: CustomNavbar(),
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
              if(state is WishlistLoading){
                return Center(
                  child: CircularProgressIndicator(),
                );
                }
              if(state is WishlistLoaded){
                 return GridView.builder(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 2.4),
              itemCount: state.wishlist.products.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: ProductCard(
                    product: state.wishlist.products[index],
                    widthFactor: 1.1,
                    leftPosition: 100,
                    isWishlist: true,
                  ),
                );
              }
              );
              }
              else{return Text('Something went wrong');}
              }
      ),
    );
  }
}
