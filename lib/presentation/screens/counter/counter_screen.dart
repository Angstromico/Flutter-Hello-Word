import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Counter Screen')),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("0", style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold)), Text("Clicks", style: TextStyle(fontSize: 30, color: Colors.grey))],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}