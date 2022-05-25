import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeView extends StatelessWidget {  
  const HomeView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context ) {
      return Scaffold(
          appBar: AppBar(
             backgroundColor: const Color.fromARGB(255, 180, 10, 214),
             title: const Text('HOME'),
          ),
        body: const Center(
          child: Text("This is the home page"),
        ),
      );
     }
    }