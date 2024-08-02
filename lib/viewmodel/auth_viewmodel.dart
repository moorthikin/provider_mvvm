import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider_mvvm/repository/auth_repository.dart';
import 'package:provider_mvvm/util/routes/route.dart';
import 'package:provider_mvvm/util/routes/routes_name.dart';
import 'package:provider_mvvm/util/utils/utils.dart';

class AuthViewModel with ChangeNotifier {
  final _myrepo = AuthRepository();

  Future<void> login(dynamic data, BuildContext context) async {
    _myrepo.login(data).then((value) {
      if (kDebugMode) {
        print("Data is : @@@@@@@@@" + value.toString());

        Utils.flushBarError("Login Successful", context);
        Navigator.pushNamed(context, RouteNames.home);
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        Utils.flushBarError("Login failed", context);
        print(error.toString());
      }
    });
  }
}
