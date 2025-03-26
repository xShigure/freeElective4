import 'package:flutter/material.dart';
 
void main() {
  runApp(const MyApp());
}
 
//Stateless - constant - for ui
//Stateful -dynamic - user interaction
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage()
    );
  }
}
 
class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});
 
  @override
  State<MyHomePage> createState() => MyHomePageState();
}
 
class MyHomePageState extends State<MyHomePage>{
  // String text_1 = "112121This is the first text!";
  int a = 0;
  int b = 0;
  int calc = 0;

  String disA = "";
  String disB = "";
  String result = "";

  bool clickedA = false;
  bool clickedB = false;
 
  void MyFunction(String textValue){
    setState(() {
      // this.text_1 = text_value;
    });
  }
  void calcA(){
    setState(() {
      if (!clickedA) {
        for (var i = 1; i < 51; i++) {
          if (i % 2 == 0) {
            a += i;
            disA = a.toString();
            clickedA = true;
          }
        }   
      }
      
    });
  }

  void calcB(){
    setState(() {
      if (!clickedB) {
        for (var i = 50; i < 80; i++) {
        if (i % 2 == 0) {
          
        }else{
          b+=i;
          disB = b.toString();
          clickedB = true;
          }
        }
      }       
    });
  }
  void calculate(){
    setState(() {
      calc = a * b;
      disA = a.toString();
      disB = b.toString();
      result = calc.toString();
    });
  }
  // int counter = 0;
  // void forCount(){
  //   setState(() {
  //     this.counter++;
 
  //     if(counter % 2 == 0){
  //       red++;
  //     } else {
  //       green++;
  //     }
 
  //     if((counter % 3) == 0){
  //       count_blue++;
  //     }
 
  //     // this.counter = counter + 1;
  //   });
  // }
 
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: 
        Center(
          child: Column(
            children: [
              // Text('Counter :' + counter.toString()),
              Row(
                children: [
                  Expanded(
                    child: Text('A', textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text('B',textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text('Result',textAlign: TextAlign.center),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(disA,textAlign: TextAlign.center),
                    // child: Text(red.toString(),textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text(disB,textAlign: TextAlign.center),
                    // child: Text(count_blue.toString(),textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text(result,textAlign: TextAlign.center),
                    // child: Text(green.toString(),textAlign: TextAlign.center),
                  ),
                ],
              ),
              // ElevatedButton(onPressed: (){
              //   MyFunction("You have change me!");
              // }, child: Text('Click Me!')),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (){
                    calcA();
                    }, child: Text('A')),),
                  Expanded(
                    child: ElevatedButton(onPressed: (){
                    calcB();
                    }, child: Text('B')),),
                  Expanded(
                    child: ElevatedButton(onPressed: (){
                    calculate();
                    }, child: Text('Calculate')),),
                ],
              ),
            ],
          )
        ),
      );
  }
}