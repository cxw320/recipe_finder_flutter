import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyCounter(),
        ),
      ),
    );
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() {
    return _MyCounterState();
  }
}

class _MyCounterState extends State<MyCounter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(
      () => _counter++,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: _incrementCounter,
        child: Text('$_counter'),
      ),
    );
  }
}
