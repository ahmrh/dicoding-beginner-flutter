import 'package:flutter/material.dart';
import 'package:mangareader/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Manga Reader',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0x00024d8a),
              brightness: Brightness.dark,
            ),
            useMaterial3: true,
            textTheme: const TextTheme(
              displayMedium: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              titleMedium:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
            )),
        home: const HomeScreen());
  }
}
