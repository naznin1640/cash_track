import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/core/widgets/lightblue_card.dart';
import 'package:cash_track/core/widgets/primary_container.dart';
import 'package:cash_track/core/widgets/tab_widget.dart';
import 'package:cash_track/core/widgets/textform_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddInvoiceView extends StatelessWidget {
  const AddInvoiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Invoice",
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: AppColors.primaryText,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 23),
                  child: Row(
                    spacing: 3,
                    children: [
                      Icon(Icons.person_outlined, color: AppColors.primary),
                      Text(
                        "Client Details",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: LightblueCard(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        right: 15,
                        bottom: 26,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Client Name",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          TextformWidget(hintText: "Enter Name"),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Client WhatsApp",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
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
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Row(
                    spacing: 3,
                    children: [
                      SvgPicture.asset(
                        "assets/images/invoice.svg",
                        colorFilter: ColorFilter.mode(
                          AppColors.primary,
                          BlendMode.srcIn,
                        ),
                      ),
                      Text(
                        "Invoice Details",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                LightblueCard(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 55,
                          children: [
                            Text(
                              "Invoice Number",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 16,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Issued Date",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 16,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 20,
                          children: [
                            Expanded(child: TextformWidget(hintText: "")),
                            Flexible(child: TextformWidget(hintText: "")),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Text(
                            "Amount (INR)",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 16,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: TextformWidget(
                            keyboard: TextInputType.number,
                            prefix: Container(
                              width: 60,
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 21),
                                child: Row(
                                  spacing: 10,
                                  children: [
                                    SvgPicture.asset("assets/images/rupee.svg"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 11),
                                      child: Container(
                                        height: 48,
                                        width: 1,
                                        decoration: BoxDecoration(
                                          color: AppColors.border,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            hintText: "0.000",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Row(
                    spacing: 7,
                    children: [
                      SvgPicture.asset("assets/images/payment.svg"),
                      Text(
                        "Payment Terms",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 16,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                PrimaryContainer(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 26,
                      top: 15,
                      left: 15,
                      right: 15,
                    ),
                    child: Column(
                      children: [
                        Row(
                          spacing: 81,
                          children: [
                            Text(
                              "CREDIT DAYS",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: AppColors.secondaryText,
                              ),
                            ),
                            Text(
                              "DUE DATES",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: AppColors.secondaryText,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 16,
                          children: [
                            Expanded(
                              child: TextformWidget(
                                keyboard: TextInputType.number,
                                hintText: "",
                              ),
                            ),
                            Expanded(
                              child: TextformWidget(
                                hintText: "",
                                suffix: Icon(Icons.calendar_today_outlined),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TabWidget(
                    color: AppColors.primary,
                    txt: Text(
                      "Reminder Preview",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    length: 2,
                    tabs: const [
                      Tab(height: 30,
                       text: "Automatic"
                      ),
                      Tab(height: 30, text: "Manual"),
                    ],
                    tabBarView: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: const Text("Automatic reminder content"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: const Text("Manual reminder content"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
