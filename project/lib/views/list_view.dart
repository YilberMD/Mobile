import 'package:flutter/material.dart';
import 'package:project/domain/firebase_connection.dart';
import 'package:project/provider/data_provider.dart';

class ListView3 extends StatefulWidget {
  const ListView3({Key? key}) : super(key: key);

  @override
  State<ListView3> createState() => _ListView3State();
}

class _ListView3State extends State<ListView3> {
  @override
  Widget build(BuildContext context) {
    FirebaseConnection fireBaseConnection = FirebaseConnection();
    return Scaffold(
      
        body: DataProvider()
            .recorrerLista(context, fireBaseConnection.getRegisters()));
  }
}