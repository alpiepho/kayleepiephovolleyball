import 'package:flutter/material.dart';

class FloatingButtons extends StatelessWidget {
  const FloatingButtons({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.onDetails,
    required this.onStats,
    required this.onVideo,
    required this.onContact,
    required this.onCode,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final Function? onDetails;
  final Function? onStats;
  final Function? onVideo;
  final Function? onContact;
  final Function? onCode;

  @override
  Widget build(BuildContext context) {
    var portrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: portrait ? 100 : 75,
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
          top: portrait ? 200 : 150,
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
          top: portrait ? 300 : 225,
          right: 30,
          child: FloatingActionButton(
            heroTag: 'video',
            onPressed: onVideo as Function()?,
            child: const Icon(
              Icons.video_camera_back,
              size: 40,
            ),
          ),
        ),
        // Positioned(
        //   top: portrait ? 400 : 300,
        //   right: 30,
        //   child: FloatingActionButton(
        //     heroTag: 'contact',
        //     onPressed: onContact as Function()?,
        //     child: const Icon(
        //       Icons.email,
        //       size: 40,
        //     ),
        //   ),
        // ),
        Positioned(
          bottom: portrait ? 40 : 20,
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
