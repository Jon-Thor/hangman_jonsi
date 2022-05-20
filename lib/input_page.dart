import 'dart:math';
import 'package:flutter/material.dart';


List<String> wordList = [
  "Talos", "Horus", "Russ",
];

class lines {
  String Lines(){
    String line = "_,"*words().length;
    return line;
  }
}



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage>{

  String winLose = "";

  void WinOrLose(int result){
    if(result == 1){
      winLose = "You won";
    }else if(result == 2){
      winLose = "You lost";
    }
  }

  final clear = TextEditingController();

  String wrongAnswer = "";

  List<String> Lines = lines().Lines().split(",");

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
                 Text(wrongAnswer,
                 style: TextStyle(
                   wordSpacing: 5,
                 ),),
              ],),
          TextField(
            controller: clear,
            maxLength: 1,
            decoration: InputDecoration(
              labelText: words(),
            ),
            onSubmitted: (text){
              clear.clear();
              setState(() {});
              if(words().toLowerCase().contains(text.toLowerCase())){
                for(int i = 0;words().length > i; i++){
                  if(text.toLowerCase() == words()[i].toLowerCase()){
                    Lines[i] = wordList[wordListNumber][i];
                    if(Lines.join("") == words()){
                      WinOrLose(1);
                    }}}
              }else{
                wrongAnswer += text;
                if(wrongAnswer.length >= 5){
                  WinOrLose(2);
                }
              }
            },
          ),
      SizedBox(
        height: 400.0,
            child: Image.asset("images/40K.jpg"),
          ),
          Container(
            child: Text(winLose),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          for(String lines in Lines)(
            Center(
            child: Container(
              margin: EdgeInsets.all(5),
                child: Text(lines,
                style: TextStyle(
                  fontSize: 60.0,
                ),),
            ),
          )),],)
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



