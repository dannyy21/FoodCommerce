import 'package:flutter/material.dart';
import 'package:foodcommerce/config/theme.dart';
import 'package:foodcommerce/widgets/widgets.dart';

import '../../models/models.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({ Key? key }) : super(key: key);
  static const String routeName = '/cart';
  static Route route(){
    return MaterialPageRoute(
    settings:RouteSettings(name: routeName),
    builder: (_)=>CartScreen()
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(title: 'Cart'),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            
                
              
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {},
                  child: Text(
                    'Go to Checkout',
                    style: Theme.of(context).textTheme.headline3!,
                  ))
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
              Row(
                children: [
                  Text('Add \$5000 for Free Delivery', style:Theme.of(context).textTheme.headline5),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(),
                    elevation: 0
                  ),
                   child: Text('Add more items',
                  style:Theme.of(context).textTheme.headline5)
                   )
                ],
              ),
          SizedBox(height: 10),
          CartProductCard(product: Product.products[0],),
          CartProductCard(product: Product.products[1],),
            ],
          ),
          Column(
            children: [
               Divider(thickness: 2),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('SubTotal', style: Theme.of(context).textTheme.headline5,),
                  Text('\$5000',style: Theme.of(context).textTheme.headline5)
                ],),
                SizedBox(height: 10,),
                 Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Delivery fee', style: Theme.of(context).textTheme.headline5,),
              Text('\$700',style: Theme.of(context).textTheme.headline5)
            ],)
              ],
            ),
          ),
          Stack(
              children: [
                Container(
                  width:MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(50)
                  )
                  ),
                   Container(
                  width:MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(5.0),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Text('Total', style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white)),
                                Text('\$700',style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white))
                              ],),
                  ),
                  )
              ],
            )
            ],),

         
         
        ]),
      ),
    );
  }
}

