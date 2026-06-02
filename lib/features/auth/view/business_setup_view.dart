import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/core/widgets/button_widget.dart';
import 'package:cash_track/core/widgets/textform_widget.dart';
import 'package:cash_track/features/auth/providers/step_notifier.dart';
import 'package:cash_track/features/auth/view/scan_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_symbols_icons/symbols.dart';

class BusinessSetupView extends ConsumerWidget {
  const BusinessSetupView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = ref.watch(stepProvider);
    final notifier = ref.watch(stepProvider.notifier);

    const totalSteps = 3;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Business Set Up",
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Text(
                  "Your business name ?",
                  style: TextStyle(
                    fontSize: 29,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 30),
              child: Text(
                textAlign: TextAlign.center,
                "This will be used on all your invoices\nand financial  reports",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
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
                  padding: const EdgeInsets.only(top: 15, left: 20 ,right: 20),
                  child: Column(
                    spacing: 13,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Legal Business Name",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary,
                        ),
                      ),
                      TextformWidget(
                        prefix: Icon(Icons.person_outline, color: AppColors.hintText,),
                        hintText: "Enter Your Name",
                      ),
                      Text(
                        "UPI ID",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary,
                        ),
                      ),
                      TextformWidget(hintText: "Enter your UPI ID for payment"),
                      Row(
                        spacing: 10,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.secondary,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                spacing: 18,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    MdiIcons.progressCheck,
                                    color: AppColors.primary,
                                    size: 25,
                                  ),
                                  Text(
                                    "Precision Tracking",
                                    style: TextStyle(
                                      fontFamily: "Lato",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.secondary,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                spacing: 18,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Symbols.account_balance_sharp,
                                    color: AppColors.primary,
                                    size: 25,
                                  ),
                                  Text(
                                    "Iegal Compliance",
                                    style: TextStyle(
                                      fontFamily: "Lato",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 30),
                        child: ButtonWidget(
                          ontap:(){
                            ref.read(stepProvider.notifier).setStep(1);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ScanView()));
                          },
                          txt: "Upload WhatsApp QR"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("By  continuing, you agree to our",
                  style: TextStyle(color: AppColors.hintText, fontFamily: "Lato",
                  fontWeight: FontWeight.w500,
                  fontSize: 14),),
                  Text(" Teams of Service",
                  style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary
                  ),)
                ],
              ),
            ),
            Text("and Privacy Ploicy", style: TextStyle(
              color: AppColors.primary,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: "Lato"
            ),),
            Padding(
              padding: const EdgeInsets.only(left: 94, right: 94, top: 29),
              child: Row(
                children:List.generate(totalSteps, (index) {
                   final isActive = index == currentStep;
              
                   return Expanded(
                    child: Container(
                      height: 8,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: isActive
                        ? AppColors.primary
                        : AppColors.hintText,
                        borderRadius: BorderRadius.circular(13)
                      ),
                    ) );
                })
              ),
            )
          ],
        ),
      ),
    );
  }
}