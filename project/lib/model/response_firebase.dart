import 'package:project/model/registros.dart';

class ResponseFirebase{

  List<Registros>? registros;

  ResponseFirebase({this.registros});

  // ResponseFirebase.fromJson(Map<List, dynamic> json){
  //     if(json['Registros'] != null){
  //         registros = <Registros> [];
  //       json['Registros'].forEach((v){
  //         registros!.add(Registros.fromJson(v));
  //     });
  //     }
  //    }
  factory ResponseFirebase.fromJson(List<dynamic> json)=>ResponseFirebase(
    registros : json.map((e) => Registros.fromJson(e)).toList(),
  );
}