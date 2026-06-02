import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/core/widgets/button_widget.dart';
import 'package:cash_track/core/widgets/popup_widget.dart';
import 'package:cash_track/features/dashboard/view/dashboard_view.dart';
import 'package:flutter/material.dart';

class OtpVerificationView extends StatefulWidget {
  const OtpVerificationView({super.key});

  @override
  State<OtpVerificationView> createState() => _OtpVerificationViewState();
}

class _OtpVerificationViewState extends State<OtpVerificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "OTP Verification",
          style: TextStyle(
            fontFamily: "Inter",
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: CircleAvatar(
                radius: 35,
                backgroundColor: AppColors.primary,
                child: Icon(
                  Icons.mail_outline_sharp,
                  color: AppColors.secondaryText,
                  size: 23,
                ),
              ),
            ),
          ),
          Text(
            "Check Your Message",
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              textAlign: TextAlign.center,
              "We sent a 6 digit code to your mentioned phone\nnumber please enter the code below",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21, top: 58),
            child: Row(
              spacing: 8,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: AppColors.primaryText),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: AppColors.primaryText),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: AppColors.primaryText),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: AppColors.primaryText),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: AppColors.primaryText),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: AppColors.primaryText),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 34, left: 21, right: 21),
            child: ButtonWidget(
              ontap: () async {
                PopupWidget.show(
                  context: context,
                  message: "OTP Verified Successfully",
                );

                await Future.delayed(const Duration(seconds: 1));
                if (context.mounted) {
                  Navigator.pop(context); 

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const DashboardView()),
                  );
                }
              },
              txt: "Verify OTP",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              spacing: 4,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.access_time, size: 20),
                Text(
                  "Resend in",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "00:59",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Didn’t receive code ?",
                style: TextStyle(fontFamily: "Lato", fontSize: 14),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Resent",
                  style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 14,
                    color: Color(0XFF850B0B),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
