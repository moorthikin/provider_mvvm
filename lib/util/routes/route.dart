import 'package:flutter/material.dart';
import 'package:provider_mvvm/util/routes/routes_name.dart';
import 'package:provider_mvvm/view/home_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No routes defined"),
                  ),
                ));
    }
  }
}
