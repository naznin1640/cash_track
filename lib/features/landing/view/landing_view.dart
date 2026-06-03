import 'package:cash_track/features/clients/view/clients_view.dart';
import 'package:cash_track/features/invoice/view/invoice_view.dart';
import 'package:cash_track/features/landing/providers/landing_notifier.dart';
import 'package:cash_track/features/landing/widgets/bottom_nav_widget.dart';
import 'package:cash_track/features/overview/view/overview_view.dart';
import 'package:cash_track/features/report/view/report_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingView extends ConsumerWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(landingProvider);

    final screens = [
       OverViewView(),
       InvoiceView(),
       ClientsView(),
       ReportView(),
    ];

    return Scaffold(
      body: screens[state.currentIndex],
      bottomNavigationBar:  BottomNavWidget(),
    );
  }
}
