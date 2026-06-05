import 'package:flutter/material.dart';

class PendingWidget extends StatelessWidget {
   PendingWidget({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFEB),
        borderRadius: BorderRadius.circular(13)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10, top: 1,bottom: 6),
        child: Text(text, style: TextStyle(
          color: Color(0XFFBE9A0C),
          fontSize: 14,
          fontFamily: "inter"
        ),),
      ),
    );
  }
}