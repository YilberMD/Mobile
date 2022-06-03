import 'package:flutter/material.dart';
import 'package:project/views/listview_1.dart';



class List_Detail extends StatelessWidget{
  final ListView_1 list;
   List_Detail({Key? key,required this.list}): super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(''),),
      body: Column(children: [
       Image.network("image"),
       const Text("name")
     ],
     ),
    );
  }

}