import 'package:flutter/material.dart';
import 'package:provider_mvvm/util/routes/routes_name.dart';
import 'package:provider_mvvm/util/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              //Navigator.pushNamed(context, RouteNames.home);
              Utils.flushBarError("Hello Moorthi", context);
              // Utils.toastMessage("Hello Moorthi");
            },
            child: Text("Click")),
      ),
    );
  }
}
