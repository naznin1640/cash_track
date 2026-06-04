import 'package:cash_track/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PrimaryContainer extends StatelessWidget {
   PrimaryContainer({super.key, required this.child});

  Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(13)
      ),
      child: child,
    );
  }
}