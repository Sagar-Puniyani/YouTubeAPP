import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/dashboard.dart';

Future<void> main() async {
  runApp( MaterialApp(
    home: const DashBoard(),
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
}