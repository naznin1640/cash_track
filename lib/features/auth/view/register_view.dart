import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/core/widgets/button_widget.dart';
import 'package:cash_track/core/widgets/textform_widget.dart';
import 'package:cash_track/features/auth/view/business_setup_view.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Register",
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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 46),
                child: Text(
                  "Join Cash Track",
                  style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 30),
              child: Text(
                "Start managing your afinance with precision",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21, right: 21),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border),
                  color: AppColors.authCardbg,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 17, left: 20, right: 20),
                  child: Column(
                    spacing: 11,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Full Name",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextformWidget(
                        prefix: Icon(
                          Icons.person_outlined,
                          color: AppColors.border,
                        ),
                        hintText: "Enter Your Name",
                      ),
                      Text(
                        "Phone Number",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextformWidget(
                        keyboard: TextInputType.number,
                        prefix: Container(
                          width: 60,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              spacing: 10,
                              children: [
                                Text(
                                  "+91 ",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  height: 48,
                                  width: 1,
                                  decoration: BoxDecoration(
                                    color: AppColors.border,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        hintText: "00000 00000",
                      ),
                      Text(
                        "Buiness Type",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextformWidget(
                        hintText: "Select Business Type",
                        suffix: Icon(Icons.keyboard_arrow_down_outlined),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 44, bottom: 36),
                        child: ButtonWidget(
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BusinessSetupView(),
                              ),
                            );
                          },
                          txt: "Continue",
                          icon: Icons.arrow_forward_ios_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
