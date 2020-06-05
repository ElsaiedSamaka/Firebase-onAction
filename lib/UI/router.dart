import 'package:flutter/material.dart';

import 'views/AddProductView.dart';
import 'views/HomeView.dart';
import 'views/productDetials.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeView());
      case '/addProduct':
        return MaterialPageRoute(builder: (_) => AddProductView());
      case '/productDetails':
        return MaterialPageRoute(
            builder: (_) => ProductDetails(
                  product: null,
                ));
      default:
        return MaterialPageRoute(
            /* or a better way is build a complete Error message page */
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
