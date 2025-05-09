// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// vibrate device until the user stop
import 'package:vibration/vibration.dart';

Future vibrateDevice(bool? start) async {
  if (start == true) {
    while (true) {
      await Vibration.vibrate(duration: 500); // Vibrate for 500ms
      await Future.delayed(Duration(milliseconds: 500)); // Pause for 500ms
    }
  } else {
    // Stop vibrating
    await Vibration.cancel();
  }
}
