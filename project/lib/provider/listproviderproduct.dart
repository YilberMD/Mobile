import 'package:flutter/material.dart';
import 'package:project/model/producto.dart';
import '../views/detail_view.dart';

class ListProviderProduct {
  static Widget showList(List<dynamic> data, BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin:const EdgeInsets.all(25),
      elevation: 10,
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(data[index].producto.image!),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(data[index].producto.nombre!+  "  Precio:" + data[index].producto.precio.toString()),
          ),
        ],
      ),
    );
      },
    );
  }
  
}