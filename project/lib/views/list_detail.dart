import 'package:flutter/material.dart';
import 'package:project/views/animedata.dart';



class AnimeDetail extends StatelessWidget{
  final AnimeData data;

   const AnimeDetail({Key? key,required this.data}): super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(data.name),),
      body: Column(children: [
       Image.network(data.Imageurl),
       
     ],
     ),
    );
  }

}