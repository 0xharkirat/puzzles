import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmptyPosController extends Notifier<int> {
  @override
  int build() {
    return 1;
  }

  void changeEmptyPos(int value) {
    state = value;
  }
}

final emptyPosController =
    NotifierProvider<EmptyPosController, int>(() => EmptyPosController());
