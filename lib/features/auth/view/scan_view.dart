import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/core/widgets/button_widget.dart';
import 'package:cash_track/features/auth/providers/qr_notifier.dart';
import 'package:cash_track/features/auth/providers/step_notifier.dart';
import 'package:cash_track/features/auth/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScanView extends ConsumerWidget {
  ScanView({super.key});

  bool isQrUploaded = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isQrUploaded = ref.watch(qrProvider);
    final currentStep = ref.watch(stepProvider);

    const totalSteps = 3;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Scan",
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(23),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(color: AppColors.border),
                  color: AppColors.authCardbg,
                ),
                child: isQrUploaded
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 48,
                              left: 70,
                              right: 70,
                            ),
                            child: Image.asset("assets/images/wpQr.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 70,
                              right: 70,
                              top: 25,
                              bottom: 45,
                            ),
                            child: ButtonWidget(txt: "Upload New QR"),
                          ),
                        ],
                      )
                      :  Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.border),
                            color: AppColors.authCardbg,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 70,
                              right: 70,
                              top: 39,
                              bottom: 38,
                            ),
                            child: InkWell(
                              onTap: () {
                                ref.read(qrProvider.notifier).uploadQr();
                              },
                              child: Container(
                                height: 220,
                                width: 220,
                                decoration: BoxDecoration(
                                  color: AppColors.secondaryText,
                                  border: Border.all(color: AppColors.border),
                                  borderRadius: BorderRadius.circular(190),
                                ),
                                child: Column(
                                  spacing: 20,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/share.png"),
                                    Text(
                                      "Upload  QR Code",
                                      style: TextStyle(
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
              ),
            ),

            Column(
              children: [
                Text(
                  "Your customers can scan this code to start",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "a WhatsApp chat with you.",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      " Learn more ",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21, right: 21, top: 132),
              child: ButtonWidget(
                ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
                },
                txt: "Register User",
                icon: Icons.arrow_forward_ios,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "By  continuing, you agree to our",
                    style: TextStyle(
                      color: AppColors.hintText,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    " Teams of Service",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "and Privacy Ploicy",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: "Lato",
              ),
            ),
            Padding(
  padding: const EdgeInsets.only(
    left: 94,
    right: 94,
    top: 29,
  ),
  child: Row(
    children: List.generate(totalSteps, (index) {
      final isActive = index == currentStep;

      return Expanded(
        child: Container(
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: isActive
                ? AppColors.primary
                : AppColors.hintText,
            borderRadius: BorderRadius.circular(13),
          ),
        ),
      );
    }),
  ),
),
          ],
        ),
      ),
    );
  }
}
