import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'notifier.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Consumer<ChangeText>(
          builder: (context, value, _) {
            return Text(value.newData);
          },
        ),
      ),
    );
  }
}
