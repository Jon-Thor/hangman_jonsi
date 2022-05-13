
import 'dart:math';
import 'package:flutter/material.dart';

const Icon wrong = Icon(Icons.close,color: Colors.red,);
const Icon right = Icon(Icons.close,color: Colors.green,);

class HangmanWords {


}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage>{

  String wrongAnswer = "";

  List<String> wordList = [
    "Talos", "Horus", "Russ",];

  int wordListNumber = Random().nextInt(3);


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
                Container(
                  child: Text(wrongAnswer),
                )
              ],
              ),
          TextField(
            decoration: InputDecoration(
              labelText: wordList[wordListNumber],
            ),
            onSubmitted: (text){
              setState(() {});
              if(wordList[wordListNumber].toLowerCase().contains(text.toLowerCase())){
              }else{
                wrongAnswer += text + " ";
              }
            },
          ),
      Container(
            child: Image.asset("images/40K.jpg"),
          ),
          Container(
            child: Text(wordList[wordListNumber][0]),
          )
        ],
      ),
    );
  }
}
