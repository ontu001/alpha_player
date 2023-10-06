import 'package:alpha_player/screen/myPlayer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alpha Player',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 25, 46, 56),
          elevation: 1,
          centerTitle: true,
          title: Text(
            "Alpha Player",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey.shade300),
          ),
        ),
        backgroundColor: Colors.blueGrey,
        body: MyPlayer(),
      ),
    );
  }
}
