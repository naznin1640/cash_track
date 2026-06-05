import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/core/widgets/lightblue_card.dart';
import 'package:cash_track/core/widgets/overdue_widget.dart';
import 'package:cash_track/core/widgets/pending_widget.dart';
import 'package:cash_track/core/widgets/primary_container.dart';
import 'package:cash_track/core/widgets/success_widget.dart';
import 'package:cash_track/features/overview/view/paymentpage_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClientDeatailsView extends StatelessWidget {
  const ClientDeatailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Client Details",
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: LightblueCard(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 54,
                            backgroundImage: AssetImage(
                              "assets/images/technova.png",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 26, bottom: 10),
                          child: Text(
                            "Technova Solutions",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone, color: AppColors.primary),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 18),
                              child: Text(
                                "+91 987654235",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 112),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.overduelight,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 10,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.warning_amber_sharp,
                                    color: AppColors.overdueDark,
                                  ),
                                  Text(
                                    "HIGH RISK",
                                    style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: AppColors.overdueDark,
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
                ),
              ),
              PrimaryContainer(
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 23,
                    left: 15,
                    right: 15,
                    top: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Total Amount",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColors.secondaryText,
                            ),
                          ),
                          Text(
                            "₹55,000",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 26,
                              fontFamily: "Inter",
                              color: AppColors.secondaryText,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        "assets/images/cashflow.svg",
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  spacing: 20,
                  children: [
                    LightblueCard(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 15,
                          children: [
                            Text(
                              "AVG. PAY TIME",
                              style: TextStyle(color: Color(0XFF646161)),
                            ),
                            Row(
                              spacing: 5,
                              children: [
                                Icon(
                                  Icons.access_time_outlined,
                                  color: AppColors.primary,
                                ),
                                Text(
                                  "13 Days",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "2 days faster than avg",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Lato",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(color: AppColors.border),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          spacing: 13,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "OPEN INVOICES",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF646161),
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/images/reportdata.svg",
                                ),
                                Text(
                                  "06",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Inter",
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "₹ 20,000 Pending",
                              style: TextStyle(
                                color: AppColors.overdueDark,
                                fontSize: 14,
                                fontFamily: "Lato",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Contact Details",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      spacing: 16,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.secondary,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 19,
                              horizontal: 17,
                            ),
                            child: Icon(
                              Icons.mail_outline,
                              color: AppColors.primaryText,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email Address",
                              style: TextStyle(
                                color: AppColors.lighttext,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "technova@gmail.com",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Inter",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(color: AppColors.border),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    spacing: 16,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.secondary,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 19,
                            horizontal: 17,
                          ),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: AppColors.primaryText,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Office Address",
                            style: TextStyle(
                              color: AppColors.lighttext,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Mg road ,Kochi Kerala",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  "Payment History",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              LightblueCard(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 18,
                    right: 15,
                    bottom: 24,
                  ),
                  child: Column(
                    spacing: 9,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Invoice# 6543",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "₹15,000",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Over Due on June 02, 2026",
                            style: TextStyle(
                              color: AppColors.lighttext,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                          OverdueWidget(text: "Over Due"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: LightblueCard(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 18,
                      right: 15,
                      bottom: 24,
                    ),
                    child: Column(
                      spacing: 9,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Invoice# 6543",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "₹15,000",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Paid on June 02, 2026",
                              style: TextStyle(
                                color: AppColors.lighttext,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                            SuccessWidget(text: "Success"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: LightblueCard(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 18,
                      right: 15,
                      bottom: 24,
                    ),
                    child: Column(
                      spacing: 9,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Invoice# 6003",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "₹5,000",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Due on July 02, 2026",
                              style: TextStyle(
                                color: AppColors.lighttext,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                            PendingWidget(text: "Pending"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: LightblueCard(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 18,
                      right: 15,
                      bottom: 24,
                    ),
                    child: Column(
                      spacing: 9,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Invoice# 6003",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "₹35,000",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Paid on May 02, 2026",
                              style: TextStyle(
                                color: AppColors.lighttext,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                            SuccessWidget(text: "Success"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentpageView()));
        },
        child: SvgPicture.asset(
          "assets/images/payment.svg",
          height: 20,
          width: 28,
          colorFilter: ColorFilter.mode(
            AppColors.secondaryText,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
