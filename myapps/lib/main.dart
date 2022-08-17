import 'package:flutter/material.dart';
import 'screen/navigation_rail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demu",
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const NavigationRails(),
    );
  }
}
