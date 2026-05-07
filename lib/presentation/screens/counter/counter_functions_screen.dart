import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/widgets/counter_button.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clicksCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Functions Screen'),
        actions: [
          CounterButton(
            icon: Icons.refresh,
            onPressed: () => setState(() => clicksCounter = 0),
            mini: true,
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$clicksCounter",
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
            ),
            Text(
              clicksCounter == 1 ? "Click" : "Clicks",
              style: TextStyle(fontSize: 30, color: Colors.grey),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CounterButton(icon: Icons.refresh, onPressed: () => setState(() => clicksCounter = 0)),
          SizedBox(height: 10),
          CounterButton(icon: Icons.add, onPressed: () => setState(() => clicksCounter++)),
          SizedBox(height: 10),
          CounterButton(icon: Icons.remove, onPressed: () => setState(() { if(clicksCounter > 0) clicksCounter--; })),
        ],
      ),
    );
  }
}
