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
        resizeToAvoidBottomInset: false,
        body: DataProvider()
            .recorrerLista(context, fireBaseConnection.getRegisters()));
  }
}

class List_Product extends StatefulWidget {
  const List_Product({Key? key}) : super(key: key);

  @override
  State<List_Product> createState() => _List_ViewState();
}

class _List_ViewState extends State<List_Product> {
  @override
  Widget build(BuildContext context) {
    FirebaseConnection fireBaseConnection = FirebaseConnection();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: DataProviderProduct()
            .recorrerListaProduct(context, fireBaseConnection.getRegisters()));
  }
}
