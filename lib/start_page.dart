import 'input_page.dart';
import 'package:flutter/material.dart';



class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  final clear = TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hangman"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: MaterialButton(
              color: Colors.red,
              height: 80.0,
              minWidth: 240.0,
              onPressed: () {
                setState(() {});
                number();
                lines().textLines();
                Navigator.push(context, MaterialPageRoute
                  (builder: (context) => InputPage())
                );
              },
            child: Text("play"),
            )
          ),
          Padding(padding: EdgeInsets.all(10)),
          Center(
            child: Container(
              height: 80.0,
              width: 240.0,
              color: Colors.red,
              child: TextField(
                controller: clear,
                textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Add a word",
                  ),
                  onSubmitted: (text) {
                  clear.clear();
                  if(text.trim().isEmpty){}
                  else{
                  wordList.add(text);}
                  }),
            )
          )
        ],),
    );
  }
}