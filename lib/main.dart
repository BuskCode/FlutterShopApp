import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/product_overview_screen.dart';
import './screens/product_detail_screen.dart';
import './providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (ctx) =>Products(),
        child: MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        accentColor: Colors.green,
        fontFamily: "Lato",
      ),
        home: ProductOverviewScreen(),
        routes: {
        ProductDetailScreen.routeName: (ctx) =>
            ProductDetailScreen(), //Klar måde at se hvilke routes vi har. Overview_screen & detail_screen
        },
      ),
    );
  }
}
