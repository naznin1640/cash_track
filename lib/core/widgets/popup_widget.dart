import 'package:cash_track/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PopupWidget {
  static Future<void> show({
    required BuildContext context,
    required String message,
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.secondaryText,
          content: Container(
            height: 200,
            width: 370,
            decoration: BoxDecoration(color: AppColors.secondaryText),
            child: Column(
              spacing: 20,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 57),
                  child: CircleAvatar(
                    backgroundColor: AppColors.success,
                    child: Icon(
                      Icons.check,
                      color: AppColors.secondaryText,
                      size: 35,
                    ),
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  message,
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

