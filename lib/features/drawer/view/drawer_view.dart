import 'package:cash_track/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(
      backgroundColor: AppColors.primary,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 65),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.profile,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor:AppColors.profilebg,
                    child:SvgPicture.asset(
                      width: 25,
                      height: 25,
                      "assets/images/profile.svg",
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alex France',
                          style: TextStyle(
                            fontFamily: "Inter",
                            color: AppColors.secondaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'User',
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryText,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              spacing: 21,
              children: [
                Padding(
                  padding: const EdgeInsets.only( top: 26),
                  child: Row(
                    spacing: 10,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0XFF03E22C),
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("assets/images/login.svg"),
                        ),
                      ),
                      Text("Login ",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: AppColors.secondaryText
                      ),)
                    ],
                  ),
                ),
                Row(
              spacing: 10,
              children: [
                SvgPicture.asset("assets/images/home.svg"),
                Text("Home ",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.secondaryText
                ),)
              ],
            ),
            Row(
              spacing: 10,
              children: [
                SvgPicture.asset("assets/images/clients.svg", color: AppColors.secondaryText,),
                Text("Customers ",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.secondaryText
                ),)
              ],
            ),
             Row(
              spacing: 10,
              children: [
                SvgPicture.asset("assets/images/scashflow.svg",),
                Text("Cash Flow Forecast ",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.secondaryText
                ),)
              ],
            ),
            Row(
              spacing: 10,
              children: [
                SvgPicture.asset("assets/images/reminder.svg",),
                Text("Reminder",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.secondaryText
                ),)
              ],
            ),
            Row(
              spacing: 10,
              children: [
               SvgPicture.asset("assets/images/subscription.svg",),
                Text("Subscription",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.secondaryText
                ),)
              ],
            ),
            Row(
              spacing: 10,
              children: [
                SvgPicture.asset("assets/images/invoice.svg",color: AppColors.secondaryText,),
                Text("Invoices",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.secondaryText
                ),)
              ],
            ),
             Row(
              spacing: 10,
              children: [
                SvgPicture.asset("assets/images/settings.svg",),
                Text("Settings",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.secondaryText
                ),)
              ],
            ),
            Row(
              spacing: 10,
              children: [
              SvgPicture.asset("assets/images/report.svg",color: AppColors.secondaryText,),
                Text("reports",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.secondaryText
                ),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Row(
                spacing: 10,
                children: [
                  Icon(Icons.logout, color: AppColors.secondaryText,),
                  Text("Logout",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.secondaryText
                  ),)
                ],
              ),
            ),
              ],
            ),
          ),
        ]
      )
    );
  }
}