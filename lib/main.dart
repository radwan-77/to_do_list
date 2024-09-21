import 'package:flutter/material.dart';
import 'package:to_do_list/screen/ugly_box.dart';
import 'package:to_do_list/screen/tabbar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Wrap Scaffold with MaterialApp
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(59, 72, 118, 1),
              title: const Text(
                "to do list",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            backgroundColor: const Color.fromRGBO(232, 226, 219, 1),
            body: const TabBarScreen()));
  }
}
