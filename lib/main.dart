import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterScreen();
  }
}
