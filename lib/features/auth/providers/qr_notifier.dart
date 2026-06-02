import 'package:flutter_riverpod/legacy.dart';

class QrNotifier extends StateNotifier<bool> {
  QrNotifier() : super(false);

  void uploadQr() {
    state = true;
  }

  void resetQr() {
    state = false;
  }
}

final qrProvider =
    StateNotifierProvider<QrNotifier, bool>((ref) {
  return QrNotifier();
});