import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'My APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String username = "kiel";
  String password = "gavanez";

  final username_input = TextEditingController();
  final password_input = TextEditingController();

  void _login() { 
    setState(() {
      if (username_input.text == username && password_input.text == password) {
        print("Login Successful");
      }else if (username_input.text != username && password_input.text == password){
        print("Incorrect username");
      }else if (username_input.text == username && password_input.text != password){
        print("Incorrect password");
      }else if (username_input.text != username && password_input.text != password){
        print("Incorrect credentials");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title, textAlign: TextAlign.center),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Text(""))
              ],
            ),
            Row(
              children: [
                Expanded(child: Column()),
                Expanded(
                  flex: 6,
                  child: TextFormField(
                    controller: username_input,
                    decoration: InputDecoration(
                    labelText: "Enter Username"
                    ),
                  )
                ), 
                Expanded(child: Column()),
              ],
            ),
            Row(
              children: [
                Expanded(child: Column()),
                Expanded(
                  flex: 6,
                  child: TextFormField(
                    controller: password_input,
                    decoration: InputDecoration(
                    labelText: "Enter Password"
                    ),
                  )
                ), 
                Expanded(child: Column()),
              ],
            ),
            Row(
              children: [
                Expanded(child: Row())
              ],
            ),
            Row(
              children: [
                Expanded(child: Text(""))
              ],
            ),
            Row(
              children: [
                Expanded(child: Column()),
                Expanded(child:
                  ElevatedButton(onPressed: _login, child: 
                    Text("Login")
                  ) 
                ),
                Expanded(child: Column()), 
              ],
            ),
            Row(
              children: [
                Expanded(child: Text(""))
              ],
            ),
            Row(
              children: [
                Expanded(child: Column()), 
                Expanded(child: 
                  Column(
                    children: [
                      ElevatedButton(onPressed: (){}, child: 
                      IconButton(onPressed: (){}, icon: Icon(Icons.home)))
                    ],
                  ),
                ),
                Expanded(child: 
                  Column(
                    children: [
                      ElevatedButton(onPressed: (){}, child: 
                      IconButton(onPressed: (){}, icon: Icon(Icons.menu)))
                    ],
                  ),
                ),Expanded(child: 
                  Column(
                    children: [
                      ElevatedButton(onPressed: (){}, child: 
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_sharp)))
                    ],
                  ),
                ),
                Expanded(child: Column()), 
              ],
            )
          ],
        ),
      ),
    );
  }
}
