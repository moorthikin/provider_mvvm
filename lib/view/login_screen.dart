import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mvvm/res/components/colors.dart';
import 'package:provider_mvvm/res/components/round_button.dart';
import 'package:provider_mvvm/util/routes/routes_name.dart';
import 'package:provider_mvvm/util/utils/utils.dart';
import 'package:provider_mvvm/viewmodel/auth_viewmodel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  FocusNode emailFocusnode = FocusNode();
  FocusNode passwordFocusnode = FocusNode();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusnode.dispose();
    passwordFocusnode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Log in"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                SizedBox(
                  height: 300,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    // border: InputBorder.none,
                    hintText: "Email field",
                  ),
                  focusNode: emailFocusnode,
                  onFieldSubmitted: (value) {
                    Utils.fieldFocusChange(
                        context, emailFocusnode, passwordFocusnode);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  focusNode: passwordFocusnode,
                  controller: passwordController,
                  decoration: InputDecoration(
                    // border: InputBorder.none,
                    hintText: "Password field",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                RoundedButton(
                    callback: () {
                      Map data = {
                        
                        'email': emailController.text.toString(),
                        'password': passwordController.text.toString(),
                      };
                      authViewModel.login(data, context);
                    },
                    color: AppColors.alterColor,
                    title: "Login")
              ],
            ),
          ),
        ));
  }
}
