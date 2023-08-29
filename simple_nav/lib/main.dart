import 'package:flutter/material.dart';

import 'ecran2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  TextEditingController _textFieldController = TextEditingController();

  void _navigateToEcran2() {
    String textFieldText = _textFieldController.text;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ecran2(le_parametre: textFieldText)),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Row( mainAxisAlignment: MainAxisAlignment.center,children: [
          Text(
            "SimpleNAv"
            , style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,)
        ], ),
        Row( mainAxisAlignment: MainAxisAlignment.center,children: [Container(width: 300,height: 100,child :TextField(controller: _textFieldController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Entre un mot',
          ),)
        )
          ],
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _navigateToEcran2,
                  child: Text("Send"),
                ),
              ],
            ),
          ])
      ),

    );
  }
}
