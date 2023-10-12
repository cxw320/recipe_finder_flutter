import 'package:flutter/material.dart';
import 'package:recipe_finder/presentation/screens/home/view/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'RecipeFinder',
      home: HomeScreen(),
    );
  }
}
