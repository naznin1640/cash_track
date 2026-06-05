import 'package:cash_track/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpiWidget extends StatelessWidget {
   UpiWidget({super.key, required this.image, required this.text});

  Widget image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.secondaryText,
            borderRadius: BorderRadius.circular(30)
          ),
          child: image,
        ),
        Text(text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter"
        ),)
      ],
    );
  }
}