import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/features/landing/model/state/landing_state.dart';
import 'package:flutter_riverpod/legacy.dart';

class LandingNotifier extends StateNotifier<LandingState> {
  LandingNotifier()
    : super(
        LandingState(
          currentIndex: 0,
          selectedItemColor: AppColors.bottomNav,
          unselectedItemColor:  AppColors.primaryText,
        ),
      );

  void changeIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }
}

final landingProvider = StateNotifierProvider<LandingNotifier, LandingState>(
  (ref) => LandingNotifier(),
);
