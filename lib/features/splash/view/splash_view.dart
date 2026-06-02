import 'package:cash_track/core/constants/app_colors.dart';
import 'package:cash_track/features/auth/view/login_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginView(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/rupeeCircle.png",
                  height: 115,
                  width: 115,
                ),
                Image.asset("assets/images/rupeeIcon.png"),
          
                RotationTransition(
                  turns: _controller,
                  child: SizedBox(
                    height: 180,
                    width: 180,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Transform.translate(
                        offset: Offset(44, 0),
                        child: Image.asset(
                          "assets/images/arrow.png",
                          height: 57,
                          width: 77,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Text("CASH TRACK",
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: "Inter",
                    fontSize: 33,
                    fontWeight: FontWeight.bold
                  ),),
          )
        ],
      ),
    );
  }
}