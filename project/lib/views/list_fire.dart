import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';


//factory Registers.fromJson(List<dynamic> json) => Registers(
//registers: json.map((e) => Register.fromJson(e)).toList(),
//);

// ignore: camel_case_types
class List_Fire extends StatelessWidget {  
  const List_Fire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child:  Container(
            child: const Text('Hello World'),
          ),
        ),
      ),
    );
  }



}