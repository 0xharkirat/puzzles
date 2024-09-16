import 'package:flutter_riverpod/flutter_riverpod.dart';

class ColorEmptyController extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void changeEmptyPos(bool value) {
    state = value;
  }
}

final colorEmptyController =
    NotifierProvider<ColorEmptyController, bool>(() => ColorEmptyController());