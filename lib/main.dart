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
  Future<void> _onDetails() async {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      constraints: BoxConstraints(
        maxWidth: width * 0.9,
        minWidth: width * 0.9,
        maxHeight: height * 0.95,
        minHeight: height * 0.9,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: width < 500
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              // const SelectableText.rich(
              //   TextSpan(
              //     text: 'Kaylee Piepho',
              //     children: [
              //       TextSpan(text: 'Setter'),
              //       TextSpan(text: 'Class 2025'),
              //     ],
              //     //style: kLabelTextStyleSystem50,
              //   ),
              // ),
              SelectableText(
                'Kaylee Piepho',
                style: kLabelTextStyleSystem50,
              ),
              Text(
                'Setter',
                style: kLabelTextStyleSystem50,
              ),
              Text(
                'Class of 2025',
                style: kLabelTextStyleSystem50,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                'GPA: 3.9',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                'PSAT9: 1270',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '(720/720 on Math)',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                'Height: 5 \'8"',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                'Weight: 130lb',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                'Standing Jump: 9 \'1"',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                'Approach Jump: 9 \'2"',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                'Coaches/Recruit Contacts:',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
              SelectableText(
                '- Micheal Roble - Rocky Elite Director/Coach - 720-937-3850',
                style: kLabelTextStyleSystem30,
              ),
              SelectableText(
                '- Nicole Burton - Fossil Ridge HS Coach - 818-688-1148',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                'Clubs:',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '2022 - Rocky Elite 15 National',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '- 2nd in Colorado',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '- AAU Premier Division, 1st in Diamond Bracket',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '- Bid to USAV Nationals, 15-National Division',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '2021 - Rocky Select 14 National',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '2020 - Rocky Select 13 National',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '2019 - NORCO 12U',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '2018 - Club One 12U',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                'School:',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '2021 - Fossil Ridge High School, 9th:',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '- setter, JV team',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '2019 - Preston Middle School, 7th',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '- setter, ran 5-1.',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '- undefeated, never lost a set.',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                'Goals:',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '- [x] Keep near 4.0 GPA',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '- [x] Win bit to Nationals',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '- [ ] Make High School State',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '- [ ] Win High School State',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                ' - [ ] Find great College',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                ' - [ ] Earn Scholarship for Volleyball',
                style: kLabelTextStyleSystem30,
              ),
              Text(
                '',
                style: kLabelTextStyleSystem30,
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _onStats() async {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      constraints: BoxConstraints(
        maxWidth: width * 0.9,
        minWidth: width * 0.9,
        maxHeight: height * 0.95,
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
                'Hudl 2022',
                style: kLabelTextStyleSystem50,
              ),
              const Divider(height: 10.0),
              Text(
                'Serving',
                style: kLabelTextStyleSystem50,
              ),
              SizedBox(
                width: width * 0.9,
                child: InteractiveViewer(
                  scaleEnabled: width < 500 ? true : false,
                  panEnabled: width < 500 ? true : false,
                  child: const Image(
                      image: AssetImage('assets/StatsServing.png'),
                      fit: BoxFit.cover),
                ),
              ),
              const Divider(height: 10.0),
              Text(
                'Hitting',
                style: kLabelTextStyleSystem50,
              ),
              SizedBox(
                width: width * 0.9,
                child: const Image(
                    image: AssetImage('assets/StatsHitting.png'),
                    fit: BoxFit.cover),
              ),
              const Divider(height: 10.0),
              Text(
                'Digs',
                style: kLabelTextStyleSystem50,
              ),
              SizedBox(
                width: width * 0.9,
                child: const Image(
                    image: AssetImage('assets/StatsDigs.png'),
                    fit: BoxFit.cover),
              ),
              const Divider(height: 10.0),
              Text(
                'Blocks',
                style: kLabelTextStyleSystem50,
              ),
              SizedBox(
                width: width * 0.9,
                child: const Image(
                    image: AssetImage('assets/StatsBlocks.png'),
                    fit: BoxFit.cover),
              ),
              Text(
                '___',
                style: kLabelTextStyleSystem50,
              ),
              const SizedBox(height: 100),
            ],
          ),
        );
      },
    );
  }

  Future<void> _onVideo() async {
    // ignore: deprecated_member_use
    await launch('https://www.hudl.com/profile/17226029/Kaylee-Piepho');
    //Navigator.of(context).pop();
  }

  Future<void> _onMail() async {
    // ignore: deprecated_member_use
    await launch('mailto:kelleenpiepho@gmail.com');
    //Navigator.of(context).pop();
  }

  Future<void> _onCode() async {
    // ignore: deprecated_member_use
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

    // NOTE: was going adjust Positioned widgets based on media size, but
    // I like the abstract look on small screen.
    return Scaffold(
      backgroundColor: Colors.grey,
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
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

              // Yellow - image
              const Positioned(
                top: 20,
                left: 20,
                child: SizedBox(
                  width: 200,
                  height: 300,
                  child: Opacity(
                    opacity: 1.0,
                    child: Image(
                        image: AssetImage('assets/PlayServe1.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),

              // // Yellow
              // const Positioned(
              //   top: 20,
              //   left: 20,
              //   child: SizedBox(
              //     width: 200,
              //     height: 300,
              //     child: Opacity(
              //       opacity: 0.5,
              //       child: DecoratedBox(
              //         decoration: BoxDecoration(
              //           color: Colors.yellow,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              // Blue - image
              const Positioned(
                top: 200,
                left: 20,
                child: SizedBox(
                  width: 600,
                  height: 500,
                  child: Opacity(
                    opacity: 1.0,
                    child: Image(
                        image: AssetImage('assets/PlayBlock2.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),

              // // Blue
              // const Positioned(
              //   top: 200,
              //   left: 20,
              //   child: SizedBox(
              //     width: 600,
              //     height: 500,
              //     child: Opacity(
              //       opacity: 0.5,
              //       child: DecoratedBox(
              //         decoration: BoxDecoration(
              //           color: Colors.blue,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              // Red - image
              const Positioned(
                top: 300,
                left: 600,
                child: SizedBox(
                  width: 600,
                  height: 500,
                  child: Opacity(
                    opacity: 1.0,
                    child: Image(
                        image: AssetImage('assets/StatsServing.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),

              // // Red
              // const Positioned(
              //   top: 300,
              //   left: 600,
              //   child: SizedBox(
              //     width: 600,
              //     height: 500,
              //     child: Opacity(
              //       opacity: 0.5,
              //       child: DecoratedBox(
              //         decoration: BoxDecoration(
              //           color: Colors.red,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              // Orange - image
              const Positioned(
                top: 700,
                left: 100,
                child: SizedBox(
                  width: 600,
                  height: 500,
                  child: Opacity(
                    opacity: 1.0,
                    child: Image(
                        image: AssetImage('assets/PlayDump.jpg'),
                        fit: BoxFit.fitHeight),
                  ),
                ),
              ),

              // // Orange
              // const Positioned(
              //   top: 700,
              //   left: 100,
              //   child: SizedBox(
              //     width: 600,
              //     height: 500,
              //     child: Opacity(
              //       opacity: 0.5,
              //       child: DecoratedBox(
              //         decoration: BoxDecoration(
              //           color: Colors.orange,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              // Purple - image
              const Positioned(
                top: 700,
                right: 180,
                child: SizedBox(
                  width: 300,
                  height: 600,
                  child: Opacity(
                    opacity: 1.0,
                    child: Image(
                        image: AssetImage('assets/TextServeRun.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),

              // // Purple
              // const Positioned(
              //   top: 700,
              //   right: 180,
              //   child: SizedBox(
              //     width: 300,
              //     height: 600,
              //     child: Opacity(
              //       opacity: 0.5,
              //       child: DecoratedBox(
              //         decoration: BoxDecoration(
              //           color: Colors.purple,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              // Green - image
              const Positioned(
                top: 1000,
                right: 80,
                child: SizedBox(
                  width: 600,
                  height: 500,
                  child: Opacity(
                    opacity: 1.0,
                    child: Image(
                        image: AssetImage('assets/PlayBlock1.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),

              // // Green
              // const Positioned(
              //   top: 1000,
              //   right: 80,
              //   child: SizedBox(
              //     width: 600,
              //     height: 500,
              //     child: Opacity(
              //       opacity: 0.5,
              //       child: DecoratedBox(
              //         decoration: BoxDecoration(
              //           color: Colors.green,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              // Pink - image
              const Positioned(
                top: 1400,
                left: 40,
                child: SizedBox(
                  width: 600,
                  height: 500,
                  child: Opacity(
                    opacity: 1.0,
                    child: Image(
                        image: AssetImage('assets/StatsHitting.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),

              // // Pink
              // const Positioned(
              //   top: 1400,
              //   left: 40,
              //   child: SizedBox(
              //     width: 600,
              //     height: 500,
              //     child: Opacity(
              //       opacity: 0.5,
              //       child: DecoratedBox(
              //         decoration: BoxDecoration(
              //           color: Colors.pink,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              // Hero box
              Positioned(
                top: width < 500 ? 60 : 50,
                right: width < 500 ? -60 : 70,
                child: SizedBox(
                  width: 600,
                  height: 300,
                  child: Opacity(
                    opacity: 1.0,
                    child: DecoratedBox(
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Kaylee Piepho',
                              style: kLabelTextStyleSystem50,
                            ),
                            Text(
                              'Setter',
                              style: kLabelTextStyleSystem50,
                            ),
                            Text(
                              'Class of 2025',
                              style: kLabelTextStyleSystem50,
                            ),
                          ],
                        )),
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
        onStats: _onStats,
        onVideo: _onVideo,
        onContact: _onMail,
        onCode: _onCode,
      ),
    );
  }
}
