import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/features/drawer/view/drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_symbols_icons/symbols.dart';

class OverViewView extends StatelessWidget {
   OverViewView({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: DrawerView(),
      appBar: AppBar(
        leading: IconButton(onPressed: (){
         scaffoldKey.currentState?.openDrawer();
        }, icon: Icon(Icons.menu)),
        title: Text("Cash Track", style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w600,
          fontSize: 20
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset("assets/images/settings.svg"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Today's Follow Up", style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(13)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            spacing: 15,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                spacing: 4,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: AppColors.green,
                                    child: Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: Icon(Symbols.account_balance_sharp, color: AppColors.secondaryText,),
                                    ),
                                  ), 
                                  Text("Total Amount", 
                                  style: TextStyle(
                                    color: AppColors.secondaryText,
                                    fontSize: 17,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w500
                                  ),)
                                ],
                              ),
                              Text("₹ 5,00,000", style: TextStyle(
                                color: AppColors.secondaryText,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Inter",
                                fontSize: 25
                              ),),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.secondary,
                                  borderRadius: BorderRadius.circular(13)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset("assets/images/arrow2.svg"),
                                      Text("12%", style: TextStyle(
                                        color: AppColors.primary,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600
                                      ),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                         SvgPicture.asset("assets/images/cash.svg")
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
   );
  }
}
