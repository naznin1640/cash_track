import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/core/widgets/button_widget.dart';
import 'package:cash_track/core/widgets/textform_widget.dart';
import 'package:cash_track/features/auth/view/otp_verification_view.dart';
import 'package:cash_track/features/auth/view/register_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 81),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: AppColors.primary,
                  child: Text(
                    "₹",
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontSize: 49,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.bold,
                  fontSize: 29,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "Sign Into Cash Track",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 21, right: 21),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border),
                  color: AppColors.authCardbg,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32, left: 20, bottom: 18),
                      child: Text(
                        "Phone Number",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: TextformWidget(
                        keyboard: TextInputType.number,
                        prefix: Container(
                          width: 60,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              spacing: 10,
                              children: [
                                Text("+91 ", style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600
                                ),),
                                Container(
                                  height: 48,
                                  width: 1,
                                  decoration: BoxDecoration(
                                    color: AppColors.border
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        hintText: "00000 00000",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: ButtonWidget(
                        ontap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerificationView()));
                        },
                        txt: "Send OTP",
                        icon: Icons.arrow_forward_sharp,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 63, left: 20),
                      child: Row(
                        spacing: 9,
                        children: [
                          Container(
                            height: 1,
                            width: 130,
                            decoration: BoxDecoration(
                              color: AppColors.border
                            ),
                          ),
                          Text("OR", style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 16,
                            fontWeight: FontWeight.w400, color: AppColors.hintText
                          ),),
                          Container(
                            height: 1,
                            width: 130,
                            decoration: BoxDecoration(
                              color: AppColors.border
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 47, bottom: 51),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don’t have an Account",style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w400, fontSize: 14
                          ),),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterView()));
                          }, 
                          child: Text("Register", style: TextStyle(
                            decoration: TextDecoration.underline,decorationColor: Color(0XFF850B0B),
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w400, fontSize: 14,
                            color: Color(0XFF850B0B),
                          ),))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
    