import 'package:flutter/material.dart';
import 'package:to_do_list/screen/ugly_box.dart';
import 'package:to_do_list/screen/tabbar_screen.dart';
import 'package:timeago/timeago.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Wrap Scaffold with MaterialApp
        home: TabBarScreen());
  }
}
