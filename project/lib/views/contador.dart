import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contador extends StatelessWidget{
  const Contador ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context ) {
  const  sizeText = TextStyle(fontSize: 28.0,color: Color.fromARGB(255, 55, 11, 65));
      return Scaffold(
          appBar: AppBar(
            elevation: 8.0,
             backgroundColor: const Color.fromARGB(255, 211, 56, 242),
             title: const Text('HOME'),
          ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('Number Push',style: sizeText),
              Text('01',style: sizeText),


            ]
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
             showMessage();

          } ,
          child: const Icon(Icons.add),
        
        )
      );
     }
    void showMessage(){
      print("Welcome to the Message");
    }

}