import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:puzzles/src/controllers/empty_pos_controller.dart';
import 'package:puzzles/src/models/square_tile.dart';

class GameController extends Notifier<List<SquareTile?>> {
  @override
  List<SquareTile?> build() {
    final emptyPos = ref.read(emptyPosController);
    int value = 0;
    return List.generate(8, (index) {
      if (index == emptyPos) {
        return null;
      }
      
      return SquareTile(value: value++, currentPos: index);
    });
  }

  void move(int pos) {
    final emptyPos = ref.read(emptyPosController);
    // Check if the selected square is next to the empty square
    if (emptyPos != pos - 1 && emptyPos != pos + 1) {
      return;
    }

    final squares = state;
    final tappedSquare = squares[pos];

    
    squares[emptyPos] = tappedSquare!.copyWith(currentPos: emptyPos);
    squares[pos] = null;

    ref.read(emptyPosController.notifier).changeEmptyPos(pos);

    state = [...squares];
  
  }
}

final gameController = NotifierProvider<GameController, List<SquareTile?>>(() {
  return GameController();
});
