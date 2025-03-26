import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePages()

    );
  }
}

class MyHomePages extends StatefulWidget{
  const MyHomePages({super.key});

    @override
    State<MyHomePages> createState() => MyHomePageState();


}

class MyHomePageState extends State<MyHomePages>{
  String value_text = "PUGIII";
  String red = "";
  String blue = "";

  int counter = 0;
  int redCounter = 0;
  int blueCounter = 0;

  void colorCount(){
    setState(() {
      counter++;
      if (counter % 2 == 0) {
        redCounter++;
        red = redCounter.toString();
      }else{
        blueCounter++;
        blue = blueCounter.toString();
      }
    });
  }
  // void function (String value_from){
  //   setState(() {
  //     this.value_text = value_from;
  //   });
  // }
    @override
    Widget build(BuildContext context){
        return Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(counter.toString()),
              Row(
                children: [
                  Expanded(child: Text("RED", textAlign: TextAlign.center),),
                  Expanded(child: Text("BLUE", textAlign: TextAlign.center),),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text(red, textAlign: TextAlign.center),),
                  Expanded(child: Text(blue, textAlign: TextAlign.center),),
                ],
              ),
              ElevatedButton(onPressed: (){
                colorCount();
              }, child: Text('Click Me!')),
            ],
          )
        ),
      );
    }
}
