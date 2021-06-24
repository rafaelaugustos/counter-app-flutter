import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple), home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  void increment() {
    count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Counter App")),
        body: Center(
            child: Text(
          "CONTADOR\n$count",
          textAlign: TextAlign.center,
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            increment();
          },
          child: Icon(Icons.add),
        ));
  }
}
