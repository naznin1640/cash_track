import 'package:cash_track/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextformWidget extends StatelessWidget {
  final String? hintText;
  final Widget? suffix;
  final Widget? prefix;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboard;
  const TextformWidget({
    super.key,
    required this.hintText,
    this.suffix,
    this.controller,
    this.validator,
    this.prefix,
    this.keyboard
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboard,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: AppColors.border
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: AppColors.border
          )
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.border),
          borderRadius: BorderRadius.circular(20,),
        ),
        filled: true,
        fillColor: AppColors.secondaryText,
        hintText: hintText,
        suffixIcon: suffix,
        prefixIcon: prefix,
        hintStyle: TextStyle(color:AppColors.hintText,
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
        fontSize: 14
      ),
      )
    );
  }
}
