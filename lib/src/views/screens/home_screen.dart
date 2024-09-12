import 'package:flutter/material.dart';
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
      body:  Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.zero,
            border: Border.all(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              width: 1,
            ),
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                
                children: [
                  SquareWidget(0),
                  SquareWidget(1),
                  SquareWidget(2),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                
                children: [
                  SquareWidget(3),
                  SquareWidget(4),
                  SquareWidget(5),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                
                children: [
                  SquareWidget(6),
                  SquareWidget(7),
                  SquareWidget(8),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
