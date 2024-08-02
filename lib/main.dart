import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mvvm/util/routes/route.dart';
import 'package:provider_mvvm/util/routes/routes_name.dart';
import 'package:provider_mvvm/view/login_screen.dart';
import 'package:provider_mvvm/viewmodel/auth_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => AuthViewModel())],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            // home: LoginScreen()),

            initialRoute: RouteNames.login,
            onGenerateRoute: Routes.generateRoute));
  }
}
