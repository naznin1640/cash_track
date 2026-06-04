import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/core/widgets/tab_widget.dart';
import 'package:cash_track/features/drawer/view/drawer_view.dart';
import 'package:cash_track/features/overview/view/add_invoice_view.dart';
import 'package:cash_track/features/overview/view/client_deatails_view.dart';
import 'package:cash_track/features/overview/widgets/sortbyamount_widget.dart';
import 'package:cash_track/features/overview/widgets/tabbar_widget.dart';
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
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
        title: Text(
          "Cash Track",
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              "assets/images/settings.svg",
              colorFilter: ColorFilter.mode(
                AppColors.primaryText,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today's Follow Up",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      left: 20,
                    ),
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
                                      child: Icon(
                                        Symbols.account_balance_sharp,
                                        color: AppColors.secondaryText,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Total Amount",
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontSize: 17,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "₹ 5,00,000",
                                style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter",
                                  fontSize: 25,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.secondary,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/arrow2.svg",
                                      ),
                                      Text(
                                        "12%",
                                        style: TextStyle(
                                          color: AppColors.primary,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset("assets/images/cash.svg"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.overduelight,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                      bottom: 11,
                    ),
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.overdueMedium,
                              child: Padding(
                                padding: const EdgeInsets.all(7),
                                child: SvgPicture.asset(
                                  "assets/images/overdue.svg",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 9),
                              child: Text(
                                "Total Overdue",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.overdueDark,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.overdueMedium,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 7,
                                    vertical: 4,
                                  ),
                                  child: Text(
                                    "URGENT",
                                    style: TextStyle(
                                      color: AppColors.overdueDark,
                                      fontFamily: "Inter",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "₹3,45,000",
                          style: TextStyle(
                            color: AppColors.overdueDark,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          "Pending Customer: 2981",
                          style: TextStyle(
                            color: AppColors.overdueDark,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Inter",
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              TabWidget(
                height: 1000,
                length: 4,
                color: AppColors.primaryText,
                tabs: [
                  Tab(
                    height: 35,
                    child: IntrinsicWidth(
                      child: Text(
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        softWrap: false,
                        "Active Invoices",
                      ),
                    ),
                  ),
                  Tab(
                    height: 35,
                    child: IntrinsicWidth(
                      child: Text(
                        "Overdue",
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        softWrap: false,
                      ),
                    ),
                  ),
                  Tab(
                    height: 35,
                    child: IntrinsicWidth(
                      child: Text(
                        "Due Soon",
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        softWrap: false,
                      ),
                    ),
                  ),
                  Tab(
                    height: 35,
                    child: IntrinsicWidth(
                      child: Text(
                        "Paid",
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        softWrap: false,
                      ),
                    ),
                  ),
                ],
                tabBarView: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: SortByAmountWidget(),
                      ),
                      Column(
                        spacing: 20,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Today's Follow-Up",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontFamily: "Inter",
                                ),
                              ),
                              Text(
                                "4 pending",
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontFamily: "inter",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          TabbarWidget(
                            ontap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ClientDeatailsView()));
                            },
                            title: "Technova Solutions",
                            amount: "₹55,000",
                            invmbr: "INV-034",
                            days: "14 Days Overdue",
                            containerclr: AppColors.secondary,
                            icon: Icon(
                              Icons.access_time_sharp,
                              color: AppColors.primary,
                              size: 16,
                            ),
                            reminder: "Oct 14- Friendly Reminder Sent",
                            txtclr: AppColors.primary,
                            payment: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 29,
                              ),
                              child: Text(
                                "Mark Paid",
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 14,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          TabbarWidget(
                            title: "Technova Solutions",
                            amount: "₹55,000",
                            invmbr: "INV-034",
                            days: "4 Days Overdue",
                            containerclr: AppColors.secondary,
                            icon: Icon(
                              Icons.access_time_sharp,
                              color: AppColors.primary,
                              size: 16,
                            ),
                            reminder: "No Reminder Sent Yet",
                            txtclr: AppColors.primary,
                            payment: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 29,
                              ),
                              child: Text(
                                "Paid",
                                style: TextStyle(
                                  color: AppColors.border,
                                  fontSize: 14,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          TabbarWidget(
                            title: "Modern Logistics",
                            amount: "₹45,000",
                            invmbr: "INV-036",
                            days: "23 Days Overdue",
                            containerclr: AppColors.overduelight,
                            icon: Icon(
                              Icons.error_outline_rounded,
                              color: AppColors.overdueDark,
                              size: 16,
                            ),
                            reminder: "Third Follow-Up Required",
                            txtclr: AppColors.overdueDark,
                            payment: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 29,
                              ),
                              child: Text(
                                "Mark Paid",
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 14,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddInvoiceView()),
          );
        },
        child: SvgPicture.asset("assets/images/addIcon.svg"),
      ),
    );
  }
}
