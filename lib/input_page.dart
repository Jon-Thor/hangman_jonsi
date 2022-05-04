
import 'package:flutter/material.dart';
import 'package:hangman_jonsi/main.dart';
import 'hangmanwords.dart';




class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage>{

  String? input;





  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("HangMan"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          TextField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
            ),
          ),
      Container(
            child: Image.asset("images/40K.jpg"),
          ),
        ],
      ),
    );
  }
}