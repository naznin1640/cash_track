import 'package:flutter/material.dart';

class LandingState {
  final int currentIndex;
  final Color unselectedItemColor;
  final Color selectedItemColor;

  const LandingState({
    required this.currentIndex,
    required this.unselectedItemColor,
    required this.selectedItemColor,
    
  });

  LandingState copyWith({
    int? currentIndex,
    Color? unselectedItemColor,
    Color? selectedItemColor,
  }) {
    return LandingState(
      currentIndex: currentIndex ?? this.currentIndex,
      unselectedItemColor:
          unselectedItemColor ?? this.unselectedItemColor,
      selectedItemColor:
          selectedItemColor ?? this.selectedItemColor,
    );
  }
}