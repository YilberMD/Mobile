import 'package:flutter/material.dart';
import '../domain/firebase_connection.dart';
import '../model/registros.dart';


class ListFirebase extends StatefulWidget {
  const ListFirebase({Key? key}) : super(key: key);

  @override
  State<ListFirebase> createState() => _ListFirebaseState();
}

class _ListFirebaseState extends State<ListFirebase> {
  final connection = FirebaseConnection();

  // ignore: non_constant_identifier_names
  List<Registros> lista_registros = [];

  @override
  Widget build(BuildContext context) {
    //callDatabase();
    return Scaffold(       
        body: ListView.builder(
            itemCount: lista_registros.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      Image.network(lista_registros[index].image!).image,
                ),
                title: Text("${lista_registros[index].nombre!} ${lista_registros[index].apellido!}"),
                onTap: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text(("${lista_registros[index].nombre!} ${lista_registros[index].apellido!}").toUpperCase() ),                    
                    content: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          
                          Image(
                          image:(Image.network((lista_registros[index].image!)).image),
                        width: 200,
                           ),                                                
                          
                          Text('\nCelular ${lista_registros[index].celular }'
                              "\n\n" +lista_registros[index].producto!.toString()
                              +"\n\n" + lista_registros[index].pago!.toString()
                              ),
                        ],
                      ),
                    ),
                        
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }

  /* void callDatabase() async {
    final response = await connection.getRegisters();
    if (lista_registros.length == 0) {
      setState(() {
        lista_registros = response.registros!;  
      });
    }
  } */

  
}