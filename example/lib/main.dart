import 'package:dropdown_cupertino/dropdown_cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

enum Person {
  yakup,
  burak,
  ramazan,
}

Map<Person, String> personMap = {
  Person.yakup: "YAKUP",
  Person.ramazan: "RAMAZAN",
  Person.burak: "BURAK"
};

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropDownCupertino<Person>(
              initialText: "Select a Person :",
              pickList: personMap,
              height: 160,
              onSelectedItemChanged: ((selected) {
                debugPrint("Selected text is: $selected");
              }),
            )
          ],
        ),
      ),
    );
  }
}
