import 'package:flutter/material.dart';
import 'package:masu_mart/app/constants/theme_data.dart';

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
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppTheme.primaryColor,
                ),
                borderRadius: BorderRadius.circular(round ? 20 : 0.0)),
            contentPadding: EdgeInsets.only(left: 10),
            hintText: hintText,
            labelStyle: TextStyle(color: hintcolor),
            prefixIcon: Icon(
              prefixIcon,
              color: AppTheme.primaryColor,
            ),
            suffixIcon: suffixIcon ?? null,
            labelText: label,
            border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppTheme.primaryColor,
                ),
                borderRadius: BorderRadius.circular(round ? 20 : 0.0))));
  }
}
