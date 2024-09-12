import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:puzzles/src/controllers/empty_square_controller.dart';

class SquareWidget extends ConsumerWidget {
  const SquareWidget(this.id, {super.key});
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEmptySquare = ref.watch(emptySquareController) == id;
    if (isEmptySquare) {
      return const SizedBox(
        width: 100,
        height: 100,
      );
    }
    return Padding(
      padding: const EdgeInsets.all(0.5),
      child: InkWell(
        onTap: () {},
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
              (id + 1).toString(),
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
