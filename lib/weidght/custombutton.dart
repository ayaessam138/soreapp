import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  custombutton(
      {required this.text, this.ontap, required Future<Null> Function() onTap});
  String? text;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
