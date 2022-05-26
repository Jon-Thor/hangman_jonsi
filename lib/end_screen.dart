import 'input_page.dart';
import 'package:flutter/material.dart';

InputPage inputPage = InputPage();




class EndScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hangman"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 250,
            margin: EdgeInsets.only(bottom: 25),
            child: Center(
              child: Text(winLose,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
              ),),
            ),),
          Center(
            child: MaterialButton(
             color: Colors.red,
             height: 80.0,
             minWidth: 240.0,
             onPressed: () {
               Navigator.popUntil(context, (route) => route.isFirst);
             },
             child: Text("Play Again"),
              ),
          ),
        ],),
    );
  }
  
  
  
}