import 'package:flutter/material.dart';

class CustomTextFieldForm extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final String label;
  final Color hintcolor;
  final VoidCallback onPressed;
  final bool obscureText;
  final validator;
  final bool round;
  final suffixIcon;

  const CustomTextFieldForm(
      {Key key,
      this.suffixIcon,
      this.controller,
      this.hintText,
      this.hintcolor,
      this.onPressed,
      this.obscureText = false,
      TextInputType textInputType,
      this.prefixIcon,
      this.validator,
      this.round,
      this.label})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 10),
            hintText: hintText,
            labelStyle: TextStyle(color: hintcolor),
            prefixIcon: Icon(prefixIcon),
            suffixIcon: suffixIcon ?? null,
            labelText: label,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(round ? 20 : 0.0))));
  }
}
