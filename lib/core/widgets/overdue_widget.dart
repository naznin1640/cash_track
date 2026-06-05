import 'package:cash_track/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class OverdueWidget extends StatelessWidget {
   OverdueWidget({super.key, required this.text});

   String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.overduelight,
        borderRadius: BorderRadius.circular(13)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10, top: 1,bottom: 6),
        child: Text(text, style: TextStyle(
          color: AppColors.overdueDark,
          fontSize: 14,
          fontFamily: "inter"
        ),),
      ),
    );
  }
}