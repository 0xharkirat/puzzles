import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:puzzles/src/controllers/game_controller.dart';
import 'package:puzzles/src/models/square_tile.dart';

class SquareWidget extends ConsumerWidget {
  const SquareWidget({super.key, required this.squareTile});
  final SquareTile squareTile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(0.5),
      child: InkWell(
        onTap: () {
          ref.read(gameController.notifier).move(squareTile.currentPos);
        },
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.zero,
            border: Border.all(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              width: 1,
            ),
          ),
          child: Center(
            child: Text(
              (squareTile.value + 1).toString(),
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
