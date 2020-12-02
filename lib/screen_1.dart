import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'notifier.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  ChangeText changeText;

  @override
  void initState() {
    changeText = context.read<ChangeText>();
    super.initState();
  }

  void refreshScreen2(){
    changeText.refreshScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: RaisedButton(
          child: Text("Click here"),
          onPressed: refreshScreen2,
        ),
      ),
    );
  }
}
