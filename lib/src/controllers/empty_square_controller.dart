import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmptySquareController extends Notifier<int> {
  @override
  int build() {
    return 8;
  }
}

final emptySquareController =
    NotifierProvider<EmptySquareController, int>(() => EmptySquareController());
