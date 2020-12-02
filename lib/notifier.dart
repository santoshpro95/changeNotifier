import 'package:flutter/material.dart';

class ChangeText extends ChangeNotifier{


  var newData = "Default Data";

  void refreshScreen(){
    newData = "This is new Data";
    notifyListeners(); // refresh consumer Widgets
  }


}