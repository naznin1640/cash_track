    import 'package:flutter_riverpod/legacy.dart';

class StepNotifier extends StateNotifier<int> {
  StepNotifier() : super(0);

  final int totalSteps = 3;

  void nextStep() {
    if (state < totalSteps - 1) {
      state++;
    } else {
      state = 0;
    }
  }

  void previousStep() {
    if (state > 0) {
      state--;
    }
  }

  void setStep(int index) {
    state = index;
  }
}

final stepProvider =
    StateNotifierProvider<StepNotifier, int>((ref) {
  return StepNotifier();
});