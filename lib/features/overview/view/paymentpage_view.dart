import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/core/widgets/lightblue_card.dart';
import 'package:cash_track/core/widgets/primary_container.dart';
import 'package:cash_track/features/overview/widgets/payment_widget.dart';
import 'package:cash_track/features/overview/widgets/upi_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentpageView extends StatelessWidget {
  const PaymentpageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cash Track",
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 23, left: 21, right: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment Page",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: AppColors.border),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: AppColors.authCardbg,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(13),
                              topRight: Radius.circular(13),
                            ),
                            border: Border.all(color: AppColors.blueborder),
                          ),
                          child: Row(
                            spacing: 15,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.business,
                                color: AppColors.primary,
                                size: 25,
                              ),
                              Column(
                                spacing: 7,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Technova Solutions",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Row(
                                    spacing: 5,
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: AppColors.primary,
                                        size: 22,
                                      ),
                                      Text(
                                        "+91 987654235",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Divider(height: 1),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 11,
                            left: 15,
                            bottom: 16,
                          ),
                          child: Column(
                            spacing: 11,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Invoice Details",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Payment for INV-034- Technova Solution",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const Divider(height: 1),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            spacing: 4,
                            children: const [
                              Icon(
                                Icons.calendar_today_outlined,
                                color: AppColors.primary,
                              ),
                              Text(
                                "Due Date : Oct 24 ,2026",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w400,
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
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: PrimaryContainer(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 15,
                        bottom: 13,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Amount Due",
                            style: TextStyle(
                              color: AppColors.secondaryText,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "₹45473",
                            style: TextStyle(
                              color: AppColors.secondaryText,
                              fontSize: 24,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  "Select Payment Methode",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 19),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 17),
                            child: Row(
                              spacing: 7,
                              children: [
                                Icon(
                                  Icons.account_balance_outlined,
                                  color: AppColors.primary,
                                ),
                                Text(
                                  "UPI",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "(Gpay,Phone pay, Paytm)",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(height: 1, color: Color(0XFFDAD9D9)),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Row(
                              spacing: 13,
                              children: [
                                UpiWidget(
                                  image: Padding(
                                    padding: const EdgeInsets.all(14),
                                    child: SvgPicture.asset(
                                      "assets/images/gpay.svg",
                                    ),
                                  ),
                                  text: "GPay",
                                ),
                                UpiWidget(
                                  image: Padding(
                                    padding: const EdgeInsets.all(19),
                                    child: SvgPicture.asset(
                                      "assets/images/phonepay.svg",
                                    ),
                                  ),
                                  text: "PhonePay",
                                ),
                                UpiWidget(
                                  image: Padding(
                                    padding: const EdgeInsets.all(18),
                                    child: SvgPicture.asset(
                                      "assets/images/paytm.svg",
                                    ),
                                  ),
                                  text: "Paytm",
                                ),
                                UpiWidget(
                                  image: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: SvgPicture.asset(
                                      "assets/images/qrcode.svg",
                                    ),
                                  ),
                                  text: "QR",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                PaymentWidget(
                  icon: SvgPicture.asset(
                    "assets/images/payment.svg",
                    height: 15,
                    width: 21,
                    colorFilter: ColorFilter.mode(
                      AppColors.primaryText,
                      BlendMode.srcIn,
                    ),
                  ),
                  title: "Cards (Visa, Master, Rupay , Amdex)",
                  subtitle: "Pay Using  credit or Debit cards",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: PaymentWidget(
                    icon: SvgPicture.asset("assets/images/netbanking.svg"), 
                    title: "Net Banking" , 
                    subtitle: "All major indian banks supported"),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: PaymentWidget(
                      icon: SvgPicture.asset("assets/images/wallet.svg"), 
                      title: "Wallet", 
                      subtitle: "All major indian banks supported"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 37, bottom: 48),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.partial,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 20),
                        child: Row(
                          spacing: 12,
                          children: [
                            SvgPicture.asset("assets/images/vector.svg"),
                            Text("Your  trancaction is encrypted with 256-bit\nSSL security",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    spacing: 16,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: AppColors.border)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 18),
                          child: Text("Cancel", style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                          ),),
                        ),
                      ),
                      PrimaryContainer(child: 
                      Padding(
                        padding: const EdgeInsets.only(top: 17, bottom: 16,left: 33, right: 28),
                        child: Row(
                          children: [
                            Icon(Icons.lock, color: AppColors.secondaryText,),
                            Text("Pay Now", style: TextStyle(
                              color: AppColors.secondaryText,
                              fontSize: 20,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700
                            ),)
                          ],
                        ),
                      ))
                    ],
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
