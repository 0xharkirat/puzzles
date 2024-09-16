import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:puzzles/src/controllers/color_empty_controller.dart';
import 'package:puzzles/src/controllers/game_controller.dart';
import 'package:puzzles/src/models/square_tile.dart';

class SquareWidget extends ConsumerStatefulWidget {
  const SquareWidget({super.key, required this.squareTile});
  final SquareTile squareTile;

  @override
  ConsumerState<SquareWidget> createState() => _SquareWidgetState();
}

class _SquareWidgetState extends ConsumerState<SquareWidget> {

  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.5),
      child: InkWell(
        onHover: (value) {
          setState(() {
            isHovered = ref.read(gameController.notifier).canMove(widget.squareTile.currentPos) && value;
            ref.read(colorEmptyController.notifier).changeEmptyPos(isHovered);
          });
          
        },
        
        onTap: () {
          ref.read(gameController.notifier).move(widget.squareTile.currentPos);
          ref.read(colorEmptyController.notifier).changeEmptyPos(false);

        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            
            color: isHovered? Colors.blue: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.zero,
            border: Border.all(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              width: 1,
            ),
          ),
          child: Center(
            child: Text(
              (widget.squareTile.value + 1).toString(),
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
