import 'package:cash_track/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LightblueCard extends StatelessWidget {
   LightblueCard({super.key, required this.child});
  
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.authCardbg,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: AppColors.blueborder)
      ),
      child: child,
    );
  }
}