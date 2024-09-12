import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:puzzles/src/controllers/empty_square_controller.dart';
import 'package:puzzles/src/models/square.dart';

class GameController extends Notifier<List<Square>> {
  @override
  List<Square> build() {
    final emptySquare = ref.watch(emptySquareController);

//      Index: 0 1 2
//        3 4 5
//        6 7 8
// Coordinates:
// (0,0) (1,0) (2,0)
// (0,1) (1,1) (2,1)
// (0,2) (1,2) (2,2)
    return List.generate(9, (index) {
      final x = index % 3;
      final y = index ~/ 3;
      return Square(x, y, id: index, isEmpty: emptySquare == index);
    });
  }
}

final gameController = NotifierProvider<GameController, List<Square>>(
  () => GameController(),
);
