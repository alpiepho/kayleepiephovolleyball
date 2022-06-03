import 'package:flutter/material.dart';

class FloatingButtons extends StatelessWidget {
  const FloatingButtons({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.onDetails,
    required this.onStats,
    required this.onContact,
    required this.onCode,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final Function? onDetails;
  final Function? onStats;
  final Function? onContact;
  final Function? onCode;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 100,
          right: 30,
          child: FloatingActionButton(
            heroTag: 'details',
            onPressed: onDetails as Function()?,
            child: const Icon(
              Icons.article_outlined,
              size: 40,
            ),
          ),
        ),
        Positioned(
          top: 200,
          right: 30,
          child: FloatingActionButton(
            heroTag: 'stats',
            onPressed: onStats as Function()?,
            child: const Icon(
              Icons.align_vertical_bottom,
              size: 40,
            ),
          ),
        ),
        Positioned(
          top: 300,
          right: 30,
          child: FloatingActionButton(
            heroTag: 'contact',
            onPressed: onContact as Function()?,
            child: const Icon(
              Icons.email,
              size: 40,
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          right: 30,
          child: FloatingActionButton(
            heroTag: 'Github',
            onPressed: onCode as Function()?,
            child: const Icon(
              Icons.code,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
