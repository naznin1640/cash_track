
import 'package:cash_track/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SortByAmountWidget extends StatelessWidget {
  const SortByAmountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondaryText,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.border
        ),
      ),
      child: const Row(
        children: [
          Icon(Icons.sort, size: 15,),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              "Sort By Amount",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
         Icon(Icons.unfold_more_outlined)
        ],
      ),
    );
  }
}
