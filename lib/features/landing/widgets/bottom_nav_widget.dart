import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/features/landing/providers/landing_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavWidget extends ConsumerWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(landingProvider);

    return BottomNavigationBar(
      currentIndex: state.currentIndex ?? 0,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: state.selectedItemColor,
      unselectedItemColor: state.unselectedItemColor,
      type: BottomNavigationBarType.fixed,
      elevation: 8,

      onTap: (index) {
        ref.read(landingProvider.notifier).changeIndex(index);
      },

      items: [
        BottomNavigationBarItem(
          icon:  SvgPicture.asset("assets/images/overview.svg",color: AppColors.primaryText,) ,
          label: "Overview",
          activeIcon: SvgPicture.asset("assets/images/overview.svg",color: AppColors.bottomNav,)
        ),
        BottomNavigationBarItem(
          icon:  SvgPicture.asset("assets/images/invoice.svg"),
          label: "Invoices",
          activeIcon:  SvgPicture.asset("assets/images/invoice.svg", color: AppColors.bottomNav,),
        ),
         BottomNavigationBarItem(
          icon:  SvgPicture.asset("assets/images/clients.svg"),
          label: "Clients",
          activeIcon: SvgPicture.asset("assets/images/clients.svg", color: AppColors.bottomNav,)
        ),
         BottomNavigationBarItem(
          icon:  SvgPicture.asset("assets/images/report.svg"),
          label: "Report",
          activeIcon: SvgPicture.asset("assets/images/report.svg", color: AppColors.bottomNav,)
        ),
      ],
    );
  }
}