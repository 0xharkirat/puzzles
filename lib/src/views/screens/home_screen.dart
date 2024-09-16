import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:puzzles/src/controllers/game_controller.dart';
import 'package:puzzles/src/views/widgets/square_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Demo'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.zero,
            border: Border.all(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              width: 1,
            ),
          ),
          child: Consumer(builder: (context, ref, child) {
            final squares = ref.watch(gameController);

            

            // Map squares to a list of SquareWidget and return them
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: squares.map((square) {
                

                if (square == null) {
                  return const SizedBox(
                    width: 100,
                    height: 100,
                  );
                }

                return SquareWidget(squareTile: square);
              }).toList(),
            );
          }),
        ),
      ),
    );
  }
}
