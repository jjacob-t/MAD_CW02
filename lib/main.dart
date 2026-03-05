import 'package:flutter/material.dart';
import '../screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // App starts on home screen
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RecipeListScreen(),
    );
  }
}

