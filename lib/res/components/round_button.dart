import 'package:flutter/material.dart';
import 'package:provider_mvvm/res/components/colors.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color color;
  final bool isLoading;
  final VoidCallback callback;
  const RoundedButton(
      {super.key,
      required this.callback,
      required this.color,
      required this.title,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: 40,
        width: 150,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(12)),
        child: isLoading == true
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Text(title),
              ),
      ),
    );
  }
}
