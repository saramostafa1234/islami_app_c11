import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 500,
                height: 300,
                color: Colors.yellow,
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.red,
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.blue,
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.yellow,
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.red,
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
