import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/core/widgets/button_widget.dart';
import 'package:cash_track/core/widgets/popup_widget.dart';
import 'package:cash_track/features/auth/providers/otp_time_notifier.dart';
import 'package:cash_track/features/landing/view/landing_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OtpVerificationView extends ConsumerStatefulWidget {
  const OtpVerificationView({super.key});

  @override
  ConsumerState<OtpVerificationView> createState() =>
      _OtpVerificationViewState();
}

class _OtpVerificationViewState extends ConsumerState<OtpVerificationView> {
  @override
  Widget build(BuildContext context) {
    final seconds = ref.watch(otpTimerProvider);
    final notifier = ref.read(otpTimerProvider.notifier);

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
      body: SingleChildScrollView(
        child: Column(
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
              child: OtpTextField(
                focusedBorderColor: AppColors.primary,
                cursorColor: AppColors.primaryText,
                fieldHeight: 50,
                fieldWidth: 50,
                textStyle: TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                numberOfFields: 6,
                keyboardType: TextInputType.number,
                borderRadius: BorderRadius.circular(13),
                showFieldAsBox: true,
                borderWidth: 1,
                borderColor: AppColors.primaryText,
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
                      MaterialPageRoute(builder: (_) => const LandingView()),
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
                    "00:${seconds.toString().padLeft(2, '0')}",
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
                  onPressed: notifier.canResend
                      ? () {
                          notifier.resendOtp();
                        }
                      : null,
                  child: Text(
                    "Resend",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 14,
                      color: notifier.canResend
                          ? const Color(0XFF850B0B)
                          : const Color(0xFFE29999),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
