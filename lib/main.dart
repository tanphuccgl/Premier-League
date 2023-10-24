import 'package:app/app.dart';
import 'package:app/locator.dart';
import 'package:flutter/material.dart';

Future main() async {
  await ConfigApp.initializeApp();
  runApp(const MyApp());
}
