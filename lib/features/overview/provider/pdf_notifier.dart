import 'package:flutter_riverpod/legacy.dart';

class PdfNotifier extends StateNotifier<bool> {
  PdfNotifier() : super(false);

  void uploadPdf() {
    state = true;
  }

  void resetPdf() {
    state = false;
  }
}

final pdfProvider =
    StateNotifierProvider<PdfNotifier, bool>((ref) {
  return PdfNotifier();
});