import 'package:flutter/material.dart';
import 'package:villegasflutter/Page2.dart';


void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    )
  );
}

  class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}



