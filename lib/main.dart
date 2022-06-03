import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      title: 'Kaylee Piepho',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Kaylee Piepho Volleyball 2022'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Future<void> _onDetails() async {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      constraints: BoxConstraints(
        maxWidth: width * 0.9,
        minWidth: width * 0.9,
        //maxHeight: height * 0.9,
        minHeight: height * 0.9,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyle_system,
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _onCode() async {
    await launch(
        'https://github.com/alpiepho/kayleepiephovolleyball/blob/master/README.md');
    //Navigator.of(context).pop();
  }

  @override
  void initState() {
    //_parseAssetImages();
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
                top: -200,
                left: -100,
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

              // Yellow
              const Positioned(
                top: 20, // TODO: base on w/h
                left: 20, // TODO: base on w/h
                child: SizedBox(
                  width: 200, // TODO: base on w/h
                  height: 300, // TODO: base on w/h
                  child: Opacity(
                    opacity: 0.5,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
              ),

              // Blue
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

              // Red
              const Positioned(
                top: 300, // TODO: base on w/h
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

              // Orange
              const Positioned(
                top: 700, // TODO: base on w/h
                left: 40, // TODO: base on w/h
                child: SizedBox(
                  width: 600, // TODO: base on w/h
                  height: 500, // TODO: base on w/h
                  child: Opacity(
                    opacity: 0.5,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
              ),

              // Purple
              const Positioned(
                top: 700, // TODO: base on w/h
                right: 40, // TODO: base on w/h
                child: SizedBox(
                  width: 600, // TODO: base on w/h
                  height: 500, // TODO: base on w/h
                  child: Opacity(
                    opacity: 0.5,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ),
              ),

              // Green
              const Positioned(
                top: 1000, // TODO: base on w/h
                right: 40, // TODO: base on w/h
                child: SizedBox(
                  width: 600, // TODO: base on w/h
                  height: 500, // TODO: base on w/h
                  child: Opacity(
                    opacity: 0.5,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),

              // Pink
              const Positioned(
                top: 1200, // TODO: base on w/h
                left: 40, // TODO: base on w/h
                child: SizedBox(
                  width: 600, // TODO: base on w/h
                  height: 500, // TODO: base on w/h
                  child: Opacity(
                    opacity: 0.5,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
              ),

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
        onDetails: _onDetails,
        onStats: _incrementCounter,
        onContact: _incrementCounter,
        onCode: _onCode,
      ),
    );
  }
}
