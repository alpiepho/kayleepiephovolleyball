import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';
import 'floating_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kaylee Piepho Volleyball',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Kaylee Piepho Volleyball'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> _assetImagePaths = [''];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Future _parseAssetImages() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final imagePaths = manifestMap.keys
        .where((String key) => key.contains('/'))
        .where((String key) => key.contains('.jpg'))
        .toList();

    setState(() {
      _assetImagePaths = imagePaths;
    });
    // ignore: avoid_print
    print('_assetImagePaths.length: ' + _assetImagePaths.length.toString());
  }

  @override
  void initState() {
    _parseAssetImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    //var portrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 2000,
          child: Stack(
            children: [
              // Background
              Positioned(
                top: 0,
                left: 0,
                child: SizedBox(
                  width: width,
                  height: height,
                  child: const Opacity(
                    opacity: 0.2,
                    child: Image(
                        image: AssetImage('assets/BallOnFloor.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),

              // Backset image
              const Positioned(
                top: 200, // TODO: base on w/h
                left: 20, // TODO: base on w/h
                child: SizedBox(
                  width: 600, // TODO: base on w/h
                  height: 500, // TODO: base on w/h
                  child: Opacity(
                    opacity: 0.5,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),

              // Huddle image 1
              const Positioned(
                top: 500, // TODO: base on w/h
                left: 500, // TODO: base on w/h
                child: SizedBox(
                  width: 600, // TODO: base on w/h
                  height: 500, // TODO: base on w/h
                  child: Opacity(
                    opacity: 0.5,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),

              // Huddle image 1
              // Huddle image 2
              // Backset image
              // Dig image
              // Serve image

              // Hero box
              Positioned(
                top: 50, // TODO: base on w/h
                right: 70, // TODO: base on w/h
                child: SizedBox(
                  width: 600, // TODO: base on w/h
                  height: 300, // TODO: base on w/h
                  child: Opacity(
                    opacity: 0.5,
                    child: DecoratedBox(
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Kaylee Piepho',
                              style: kLabelTextStyle_system,
                            ),
                            Text(
                              'Setter',
                              style: kLabelTextStyle_system,
                            ),
                            Text(
                              'Class of 2025',
                              style: kLabelTextStyle_system,
                            ),
                          ],
                        )),
                  ),
                ),
              ),

              // Original counter
              Positioned(
                top: 200,
                right: 10,
                width: 200,
                height: 400,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'You have pushed the button this many times:',
                      ),
                      Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingButtons(
        screenHeight: height,
        screenWidth: width,
        onPreviousItem: _incrementCounter,
        onNextItem: _incrementCounter,
        onTogglePause: _incrementCounter,
        onHelp: _incrementCounter,
      ),
    );
  }
}
