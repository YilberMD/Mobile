import 'package:project/model/registros.dart';

class ResponseFirebase{

  List<Registros>? registro;

  ResponseFirebase({this.registro});

  // ResponseFirebase.fromJson(Map<List, dynamic> json){
  //     if(json['Registros'] != null){
  //         registros = <Registros> [];
  //       json['Registros'].forEach((v){
  //         registros!.add(Registros.fromJson(v));
  //     });
  //     }
  //    }
 /*  ResponseFirebase.fromJson(List<dynamic> json){    
    registros = json.map((e) => Registros.fromJson(Map<String, dynamic>.from(e as Map))).toList();
   } */
     factory ResponseFirebase.fromJson(List list) => ResponseFirebase(
      registro: list.map((e) => Registros.fromJson(e)).toList());



 }