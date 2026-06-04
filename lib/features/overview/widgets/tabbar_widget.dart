import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/core/widgets/primary_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabbarWidget extends StatelessWidget {
   TabbarWidget({super.key, 
  required this.title,
  required this.amount,
  required this.invmbr,
  required this.containerclr,
  required this.icon,
  required this.reminder,
  required this.txtclr,
  required this.payment,
  required this.days,
   this.ontap});
 
  
  String title;
  String amount;
  String invmbr;
  Color containerclr;
  Widget icon;
  String reminder;
  Color txtclr;
  Widget payment;
  String days;
  VoidCallback? ontap;



  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: AppColors.border)
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600
                  ),),
                  Text(amount,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                    fontSize: 17
                  ),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  spacing: 5,
                  children: [
                    Text(invmbr,
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                      fontSize: 14
                    ),),
                    SvgPicture.asset("assets/images/dot.svg"),
                    Text(days, style: TextStyle(
                      color: AppColors.overdueDark,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                      fontSize: 14
                    ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11, bottom: 27),
                child: Container(
                  decoration: BoxDecoration(
                    color: containerclr,
                    borderRadius: BorderRadius.circular(13)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
                    child: Row(
                      spacing: 6,
                      children: [
                        icon,
                        Text(reminder,style: TextStyle(
                          color:txtclr,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                        ),)
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryContainer(child: 
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
                    child: Row(
                      spacing: 15,
                      children: [
                        Icon(Icons.chat, color: AppColors.secondaryText,),
                        Text("Sent Whatsapp",style: TextStyle(
                          color: AppColors.secondaryText,
                          fontFamily: "Inetr",
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                        ),)
                      ],
                    ),
                  )),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: AppColors.border)
                    ),
                    child: payment
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}