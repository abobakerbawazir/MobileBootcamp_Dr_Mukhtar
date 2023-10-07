import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'PageNotFound.dart';
import 'ProductDetailPage.dart';
import 'ProductModel.dart';

class RouteManager {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        {
          return MaterialPageRoute(builder: (ctx) {
            return HomeScreen();
          });
        }
      case '/details':
        {
          ProductModel product = settings.arguments as ProductModel;
          return MaterialPageRoute(builder: (ctx) {
            return ProductDetailPage(
              product: product,
            );
          });
        }
      default:
        {
          return MaterialPageRoute(builder: (ctx) {
            return PageNotFound();
          });
        }
    }
    
  }
}
