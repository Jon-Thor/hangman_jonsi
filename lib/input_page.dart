import 'dart:math';
import 'package:flutter/material.dart';


List<String> wordList = [
  "Talos", "Horus", "Russ",
];

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage>{

  String wrongAnswer = "";

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
            mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                 Text(wrongAnswer),
              ],),
          TextField(
            decoration: InputDecoration(
              labelText: words(),
            ),
            onSubmitted: (text){
              setState(() {});
              if(words().toLowerCase().contains(text.toLowerCase())){
              }else{
                wrongAnswer += text + " ";
              }
            },
          ),
      SizedBox(
        height: 400.0,
            child: Image.asset("images/40K.jpg"),
          ),
          Container(
            child: Text(words()),
          ),
          Container(
            color: Colors.red,
            child: MaterialButton(
              onPressed: () {
                setState(() {});
                number();
                },
              child: Text("${wordList.length}"),),
          )
        ],),
    );
  }
}

int wordListNumber = Random().nextInt(wordList.length);

int number()
{
  return wordListNumber = Random().nextInt(wordList.length);
}

String words() {
    return wordList[wordListNumber];
  }



