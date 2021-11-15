// ignore_for_file: avoid_unnecessary_containers, unnecessary_new, prefer_const_constructors, duplicate_ignore, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyTextField(),
  ));
}

class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String inputValue = "";

  final TextEditingController controller = new TextEditingController();
  void onSubmitted(String value) {
    setState(() {
      inputValue = inputValue + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("EditText Widget"),
        backgroundColor: Colors.redAccent,
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new TextField(
                  decoration:
                      new InputDecoration(hintText: "Ingrese un texto aqui"),
                  onSubmitted: (String value) {
                    onSubmitted(value);
                  },
                  controller: controller,
                ),
                new Text(inputValue)
              ],
          )
        ),
      ),
    );
  }
}
