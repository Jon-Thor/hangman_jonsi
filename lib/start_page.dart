import 'input_page.dart';
import 'package:flutter/material.dart';

HangmanWords hangmanwords = HangmanWords();


class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hangman"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: StartPageButton(onTap: (){
              Navigator.push(context, MaterialPageRoute
              (builder: (context) => InputPage())
              );
            }, StartPageButtonName: 'Play',
            ),
          ),
          Center(
            child: Container(
              height: 80.0,
              width: 240.0,
              color: Colors.red,
              child: TextField(
                  onSubmitted: (text) {
                    wordList.add(text);
                  }),
            )
          )
        ],),
    );
  }
}

class StartPageButton extends StatelessWidget {

  StartPageButton({required this.onTap, required this.StartPageButtonName});

  final String StartPageButtonName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      child: Container(
        color: Colors.red,
        height: 80.0,
        width: 240.0,
        child: Center(child: Text(
            StartPageButtonName
        ),),
      ),
      onTap: onTap,
    );
  }

}