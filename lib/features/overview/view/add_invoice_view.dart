import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/core/widgets/button_widget.dart';
import 'package:cash_track/core/widgets/lightblue_card.dart';
import 'package:cash_track/core/widgets/primary_container.dart';
import 'package:cash_track/core/widgets/tab_widget.dart';
import 'package:cash_track/core/widgets/textform_widget.dart';
import 'package:cash_track/features/overview/provider/pdf_notifier.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddInvoiceView extends ConsumerWidget {
  AddInvoiceView({super.key});

  bool isPdfUploaded = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPdfUploaded = ref.watch(pdfProvider);
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
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                    height: 120,
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
                      Tab(height: 30, text: "Automatic"),
                      Tab(height: 30, text: "Manual"),
                    ],
                    tabBarView: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          child: Row(
                            spacing: 15,
                            children: [
                              AutomaticCard(
                                color: AppColors.secondary,
                                day: "Day 05",
                                month: "Oct 03",
                                cmplt: "completed",
                                txtclr: AppColors.primary,
                              ),
                              AutomaticCard(
                                color: AppColors.secondary,
                                day: "Day 15",
                                month: "Oct 10",
                                cmplt: "Completed",
                                txtclr: AppColors.primary,
                              ),
                              AutomaticCard(
                                color: Color(0XFFF2E8CB),
                                day: "Day 25",
                                month: "Oct 24",
                                cmplt: "Next",
                                txtclr: Color(0XFFB19809),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          spacing: 6,
                          children: [
                            addreminder(),
                            addreminder(),
                            addreminder(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 7),
                  child: Text(
                    "Attach PDF",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ref.read(pdfProvider.notifier).uploadPdf();
                  },
                  child: DottedBorder(
                    options: RoundedRectDottedBorderOptions(
                      radius: Radius.circular(13),
                      color: AppColors.primary,
                      dashPattern: [15, 10],
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 35),
                      child: isPdfUploaded
                          ? Stack(
                              children: [
                                Positioned(
                                  right: 10,
                                  top: 0,
                                  child: GestureDetector(
                                    onTap: () {
                                      ref.read(pdfProvider.notifier).resetPdf();
                                    },
                                    child: const Icon(Icons.close),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Center(
                                      child: SvgPicture.asset(
                                        "assets/images/pdf.svg",
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Text(
                                        "Tap to upload PDF",
                                        style: TextStyle(
                                          color: AppColors.primary,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Inter",
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Max size : 5MB only",
                                      style: TextStyle(
                                        color: AppColors.lighttext,
                                        fontSize: 14,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.secondary,
                                    shape: BoxShape.circle,
                                  ),
                                  padding: const EdgeInsets.all(16),
                                  child: SvgPicture.asset(
                                    "assets/images/chat.svg",
                                    height: 21,
                                    width: 21,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Text(
                                    "Tap to upload PDF",
                                    style: TextStyle(
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Inter",
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Max size : 5MB only",
                                  style: TextStyle(
                                    color: AppColors.lighttext,
                                    fontSize: 14,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 23, bottom: 10),
                  child: Text(
                    "Note",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                  child: TextFormField(
                    maxLines: null,
                    expands: true,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      hintText: "Add Specific instructions for the client",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 120, bottom: 40),
                  child: PrimaryContainer(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         SvgPicture.asset("assets/images/check.svg"),
                         Text("Save", style: TextStyle(
                          color: AppColors.secondaryText,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          fontFamily: "Inter"
                         ),)
                        ],
                      ),
                    ) ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AutomaticCard extends StatelessWidget {
  AutomaticCard({
    super.key,
    required this.color,
    required this.day,
    required this.month,
    required this.cmplt,
    this.txtclr,
  });

  Color color;
  String day;
  String month;
  String cmplt;
  Color? txtclr;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 13,
          bottom: 16,
          left: 24,
          right: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              day,
              style: TextStyle(
                color: AppColors.lighttext,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: "Inter",
              ),
            ),
            Text(
              month,
              style: TextStyle(
                fontFamily: "Inetr",
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            Text(
              cmplt,
              style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: txtclr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget addreminder() {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.secondary,
      borderRadius: BorderRadius.circular(13),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 15),
      child: Column(
        children: [
          Text(
            "Add Reminder",
            style: TextStyle(
              color: AppColors.lighttext,
              fontSize: 14,
              fontFamily: "Inter",
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Container(
              height: 41,
              width: 40,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add, color: AppColors.secondaryText),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
