import 'package:flutter/material.dart';
import 'package:keh/screens/home.screen/home.screen.dart';

Future<void> main() async {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kéh",
      home: Scaffold(
        backgroundColor: Colors.white,
        body: HomeScrceen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
