import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  textfield(
      {this.hinttext,
      this.onchanged,
      this.text = false,
      this.inputType,
      required Null Function(dynamic data) onChanged,
      required String hintText});
  Function(String?)? onchanged;
  String? hinttext;
  bool? text;
  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: inputType,
        obscureText: text!,
        onChanged: onchanged,
        decoration: InputDecoration(
            hintText: hinttext,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(),
                borderRadius: BorderRadius.circular(16)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(16))));
  }
}
