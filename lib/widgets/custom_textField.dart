import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  Widget? label;
  bool? obscureText;
  Function(String)? onChanged;
  TextInputType? inputType;
  CustomTextField(
      {this.hintText,
      this.label,
      this.onChanged,
      this.obscureText = false,
      this.inputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
