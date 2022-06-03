import 'package:flutter/material.dart';

class FloatingButtons extends StatelessWidget {
  const FloatingButtons({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.onPreviousItem,
    required this.onNextItem,
    required this.onTogglePause,
    required this.onHelp,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final Function? onPreviousItem;
  final Function? onNextItem;
  final Function? onTogglePause;
  final Function? onHelp;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 100,
          right: 30,
          child: FloatingActionButton(
            heroTag: 'back',
            onPressed: onPreviousItem as Function()?,
            child: const Icon(
              Icons.arrow_left,
              size: 40,
            ),
          ),
        ),
        Positioned(
          top: 200,
          right: 30,
          child: FloatingActionButton(
            heroTag: 'next',
            onPressed: onNextItem as Function()?,
            child: const Icon(
              Icons.arrow_right,
              size: 40,
            ),
          ),
        ),
        Positioned(
          top: 300,
          right: 30,
          child: FloatingActionButton(
            heroTag: 'pause',
            onPressed: onTogglePause as Function()?,
            child: const Icon(
              Icons.pause,
              size: 40,
            ),
          ),
        ),
        Positioned(
          top: 400,
          right: 30,
          child: FloatingActionButton(
            heroTag: 'settings',
            onPressed: onHelp as Function()?,
            child: const Icon(
              Icons.add,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
