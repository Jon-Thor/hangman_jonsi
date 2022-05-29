import 'dart:math';
import 'package:flutter/material.dart';
import 'end_screen.dart';


List<String> wordList = [
  "Talos", "Rogal Dorn", "Russ",
  "God Emperor of Mankind"
];

String textLines(){
    String line = "_,"*words().length;
    return line;
}


String winLose = "";


int wordListNumber = Random().nextInt(wordList.length);

int number() {
  return wordListNumber = Random().nextInt(wordList.length);
}

String words() {
  return wordList[wordListNumber];
}



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage>{

  void WinOrLose(int result){
    if(result == 1){
      winLose = "You won, ${words()} was correct";
    }else if(result == 2){
      winLose = "You lost, the word was ${words()}";
    }
    Navigator.push(context, MaterialPageRoute
    (builder: (context) => EndScreen()),
    );}

  final clear = TextEditingController();

  String wrongAnswer = "";

  //Lines takes the textLines String to make the lines
  List<String> Lines = textLines().split(",");
  List Spaces(){
    //checks if there any empty spaces
    for(int a = 0; words().length > a; a++)
        if(words()[a].contains(" ")){
          Lines[a] = words()[a];}
      return Lines;
  }//

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("HangMan"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextField(
            controller: clear,
            maxLength: 1,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white,)
              ),
              hintText: "Guess a letter here",
            ),
            onSubmitted: (text){
              clear.clear();
              setState(() {});
              //checks if letter inputted is in the word
              if(words().toLowerCase().contains(text.toLowerCase())){
                for(int i = 0;words().length > i; i++){
                  if(text.toLowerCase() == words()[i].toLowerCase()){
                    Lines[i] = words()[i];
                    if(Lines.join() == words()){
                      WinOrLose(1);
                    }}}
              }else{
                //if letter isn't in the word it is added to wrongAnswer
                if(wrongAnswer.toLowerCase().contains(text.toLowerCase())){}
                else{
                  if(wrongAnswer.length < 8){
                    wrongAnswer += text;}
                  if(wrongAnswer.length >= 8) {
                  WinOrLose(2);
                }}
              }
            },
          ),
          SizedBox(
            child: Image.asset("images/Hangman${wrongAnswer.length}.png"),
          ),
      //Lines for the words are displayed here
      Container(
          height: 200,
          child: Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
                for(String lines in Spaces())
                  Text(lines,
                    style: TextStyle(
                      letterSpacing: 5,
                      fontSize: 50.0,
                    ),),
          ]),
      ),
          //This is where the wrongAnswers are shown
          Container(
            height: 50,
            child: Row(
                children: <Widget>[
                   Text(wrongAnswer,
                   style: TextStyle(
                     fontSize: 40,
                     wordSpacing: 5,
                   ),),
                ],),
          )
            ],),
    );
  }
}










