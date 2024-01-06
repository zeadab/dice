import 'dart:math';

import 'package:flutter/material.dart';


void main() {
  runApp( MyApp());
}


class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => MyApp_State();
}

class MyApp_State extends State<MyApp> {
  int xl = 1;
  int yl = 1;

   void function(){ setState( (){
   xl = Random().nextInt(5
  ) +1;
   yl = Random().nextInt(5) +1;

  } );}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white24,
        body: SafeArea(
          child: Container(
            child:Column(

            children:<Widget>[
              AppBar(title: Text('Dice'), backgroundColor: Colors.white,
              ),

              Center(
                child:  Row(


              children: [

                Expanded(child: TextButton(


                  onPressed:() {function();},
                  child: Image.asset('images/dice$xl.png'),
     ) ,
                ),
        Expanded(child: TextButton(

            onPressed:() {function();},
            child: Image.asset('images/dice$yl.png'),
    )
        ),
              ],
            ),

            ),
            ]),
          ),
        ),
      ),
    );
  }
}
