import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salesforcedrillers/screen_1.dart';
import 'package:salesforcedrillers/screen_2.dart';

import 'notifier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var data = "default data";

  StreamController streamData = StreamController<String>.broadcast();

  // StreamController streamData = StreamController<String>.broadcast();

  // broadcast used for multiple listener (StreamBuilder)

  @override
  void dispose() {
    streamData.close();
    super.dispose();
  }

  void changeState() {
    data = "This is new data";

    // streamData.sink.addError("this is error"); // add error
    streamData.sink.add(data); // add new data
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    /// for multi provide
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(
    //       create: (context)=> ChangeText(),
    //     ),
    //
    //     ChangeNotifierProvider(
    //       create: (context)=> ChangeText(),
    //     ),
    //   ],
    //   child:MaterialApp(
    //     theme: ThemeData(
    //         primaryColor: Colors.grey
    //     ),
    //     home: Scaffold(
    //       body: Column(
    //         children: [
    //           Expanded(child: Screen1()),
    //           Expanded(child: Screen2()),
    //         ],
    //       ),
    //     ),
    //   ) ,
    // );

    // for single provider
    return ChangeNotifierProvider(
      create: (context) => ChangeText(),
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.grey),
        home: Scaffold(
          body: Column(
            children: [
              Expanded(child: Screen1()),
              Expanded(child: Screen2()),
            ],
          ),
        ),
      ),
    );
  }
}
