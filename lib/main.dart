import 'package:flutter/material.dart';
import 'UI/screens.dart';
import 'config/app_router.dart';
import 'config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider(create:(_) =>WishlistBloc()..add(StartWishlist())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
        home: HomeScreen(),
      ),
    );
  }
}
