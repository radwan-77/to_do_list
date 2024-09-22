import 'package:flutter/material.dart';
import 'package:to_do_list/screen/tabbar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,

        // Wrap Scaffold with MaterialApp
        home: TabBarScreen());
  }
}
