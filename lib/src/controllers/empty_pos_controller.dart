import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmptyPosController extends Notifier<int> {
  @override
  int build() {
    
    return Random().nextInt(8);
  }

  void changeEmptyPos(int value) {
    state = value;
  }
}

final emptyPosController =
    NotifierProvider<EmptyPosController, int>(() => EmptyPosController());
