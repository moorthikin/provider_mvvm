import 'package:flutter/material.dart';
import 'package:provider_mvvm/util/routes/routes_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
          onTap: () {
            Navigator.pushNamed(context, RouteNames.home);
          },
          child: Text("Click")),
    );
  }
}
