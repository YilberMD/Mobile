import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int count = 0;
  bool click = true;

  @override
  Widget build(BuildContext context) {
    const sizeText =  TextStyle(fontSize: 28.0, color: Color.fromARGB(255, 231, 217, 231));
    return Scaffold(
      backgroundColor:(click == false)?  const Color.fromARGB(255, 0, 0, 0) :const Color.fromARGB(255, 137, 135, 141),
      appBar: AppBar(
        elevation: 8.0,
        backgroundColor: const Color.fromARGB(255, 70, 13, 82),
        title: const Text('Count Screen'),
      ),
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  
            children: [
             const Text('Number Push', style: sizeText),
             Text('$count', style: sizeText),
            ],
        
          )
      ),
      floatingActionButton: _incrementCount(),      
    );
  }

  Widget _incrementCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            setState(() {
              count--;
              click = !click;
            });
          },
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 6.0,),
           FloatingActionButton(          
            onPressed: () {
            setState(() {
              count++;
              click = !click;
            });
          },          
          child: const Icon(Icons.add),
        ),
      ],
      
    );
  }
}
