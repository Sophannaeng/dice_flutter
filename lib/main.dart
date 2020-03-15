import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Center(
          child: Text("Who take the trash"
          ),),

        backgroundColor: Colors.red,
      ),
      body : DicePage(),
    ),
    ),
  
  );
}



class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber=1;
  int diceNumber2=1;
  void diceRole(){
    diceNumber= Random().nextInt(6)+1;
    diceNumber2= Random().nextInt(6)+1;

  }
  @override
  Widget build(BuildContext context) {
    return Center(
//        padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(

              onPressed: (){print('tested');

              setState(
                      () {
                        print('setonstate');

                  diceRole();
                      });
              },
              child: Image(

                image:
                AssetImage('images/dice$diceNumber.png'),
              ),
            ),
          ),


          Expanded(

            child: FlatButton(

                onPressed: (){
                  setState(
                          () {
                        print('setonstate');
                        diceRole();
                      });
                  print('left has been pressed');
                }
                ,child: Image.asset('images/dice$diceNumber2.png')),
          ),

        ],

      ),
    );
  }
}











