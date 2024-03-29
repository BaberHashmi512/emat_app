import 'package:emat_app/Screens/CartPage.dart';
import 'package:emat_app/Screens/ItemPage.dart';
import 'package:flutter/material.dart';
import 'package:emat_app/Screens/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => const Homepage(),
        "cartPage": (context) => const CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
