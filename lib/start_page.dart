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
                lines().Lines();
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
   VoidCallback onTap;

  @override
  Widget build(BuildContext context){
    return MaterialButton(
      color: Colors.red,
      height: 80.0,
      minWidth: 240.0,
      onPressed: () {  },
      child: Center(child: Text(
          StartPageButtonName
      ),),
    );
  }
  /*StartPageButton(onTap: (){
  Navigator.push(context, MaterialPageRoute
  (builder: (context) => InputPage())
  );
  hangmanwords.number();
  }, StartPageButtonName: 'Play',
  ),*/

}