import 'package:cash_track/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
    required this.length,
    required this.tabs,
    required this.tabBarView,
    this.height = 240,
    this.txt,
    required this.color
  });

  final int length;
  final double height;
  final List<Widget> tabs;
  final List<Widget> tabBarView;
  final Widget? txt;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(  
      length: length,
      child:Column(
  children: [
    Row(
      spacing: 10,
  children: [
    if (txt != null) ...[
      txt!,
    ],
     Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(13)
            ),
            child: TabBar(
              isScrollable: true,
              tabAlignment:  TabAlignment.start,
              labelStyle: TextStyle(
                fontFamily: "Inter",
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),
              // isScrollable: true,
              indicator: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(13),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              labelColor: AppColors.secondaryText,
              unselectedLabelColor: AppColors.primary,
              tabs: tabs,
            ),
          ),
        ),
      ],
    ),
    SizedBox(
      height: height,
      child: TabBarView(
        children: tabBarView,
      ),
    ),
  ],
)
    );
  }
}