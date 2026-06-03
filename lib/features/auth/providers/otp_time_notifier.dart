import 'dart:async';
import 'package:flutter_riverpod/legacy.dart';


class OtpTimeNotifier extends StateNotifier<int>{
  OtpTimeNotifier() : super(59){
    startTimer();
  }

  Timer? timer;

  bool get canResend => state == 0;

  void startTimer(){
    state = 59;

    timer?.cancel();

    timer = Timer.periodic(Duration(seconds: 1), (timer){
      if(state > 0){
        state --;
      }else{
        timer.cancel();
      }
    });
  }

  void resendOtp(){
    startTimer();

    @override
    void dispose(){
      timer?.cancel();
      super.dispose();
    }
  }
}

final otpTimerProvider= StateNotifierProvider<OtpTimeNotifier, int>((ref) => OtpTimeNotifier());

