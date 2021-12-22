import 'package:car_sell/presentation/screens/CarDetails.dart';
import 'package:car_sell/presentation/screens/home.dart';
import 'package:car_sell/presentation/screens/seller_info_screen.dart';
import 'package:flutter/material.dart';

/// Created by Naveen Verma on 22-12-2021
/// To The New
/// naveen.verma@tothenew.com

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => const HomeScreen(
                  title: 'Home Screen',
                ));
        break;
      case '/seller_info_screen':
        return MaterialPageRoute(
            builder: (_) => const SellerInfoScreen(
                  title: 'Seller Information',
                ));
        break;

      case CarDetails.id:
        return MaterialPageRoute(
            builder: (_) => const CarDetails(
                  title: 'Car Details',
                ));
        break;
      default:
        return null;
    }
  }
}
