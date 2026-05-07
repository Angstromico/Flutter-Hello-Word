import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/widgets/counter_button.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clicksCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Counter Screen')),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("$clicksCounter", style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold)), Text(
              clicksCounter == 1 ? "Click" : "Clicks", style: TextStyle(fontSize: 30, color: Colors.grey))],
      )),
      floatingActionButton: CounterButton(icon: Icons.add, onPressed: () => setState(() => clicksCounter++)),
    );
  }
}