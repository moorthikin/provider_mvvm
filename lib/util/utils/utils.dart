import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static toastMessage(String message) {
    Fluttertoast.showToast(msg: message);
  }

  static void flushBarError(String message, BuildContext context) {
    Flushbar(
      message: message,
      backgroundColor: Colors.green,
      duration: Duration(seconds: 2),
    )..show(context);
  }
}