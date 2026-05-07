import 'package:flutter/material.dart';

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
      appBar: AppBar(title: Text('Counter Functions Screen'), actions: [IconButton(onPressed: () => setState(() => clicksCounter = 0), icon: Icon(Icons.refresh))]),
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
          FloatingActionButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () => setState(() => clicksCounter++),
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () => setState(() { if(clicksCounter > 0) clicksCounter--; }),
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
