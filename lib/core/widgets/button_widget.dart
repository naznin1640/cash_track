import 'package:cash_track/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
   ButtonWidget({super.key, required this.txt, this.icon, this.ontap});

   String txt;
   IconData? icon;
   GestureTapCallback? ontap;
   

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(13)
        ),
        child: Row(
          spacing: 9,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              txt, style: TextStyle(color: AppColors.secondaryText,
            fontFamily: "Lato",
            fontSize: 20,
            fontWeight: FontWeight.w700,),),
            Icon(icon, color: AppColors.secondaryText,size: 18,)
          ],
        ),
      ),
    );
  }
}