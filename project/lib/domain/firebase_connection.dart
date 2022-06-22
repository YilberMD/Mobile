import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:project/model/registros.dart';
import 'package:project/model/response_firebase.dart';

class FirebaseConnection{
   
  
   static final FirebaseDatabase _database = FirebaseDatabase.instance;
   
   DatabaseReference instanceFirebase(){
     return _database.ref('/Registros');
   }
  Future<List<Registros>?> getRegisters() async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.get();
      final string = json.encode(response.value);
      final data = json.decode(string);
      final registers = ResponseFirebase.fromJson(data);
      return registers.registro;
    } catch (e) {
      rethrow;
    }
  }
  /* Future<ResponseFirebase>getRegisters() async {
    try{
      DatabaseReference _registerRef = instanceFirebase();
      DataSnapshot response = await _registerRef.get();
      final map = Map<String, dynamic>.from(response.value as Map);
  
      final registers = ResponseFirebase.fromJson(map.values.toList());
      return registers;
     
    }
    catch(e){
      rethrow;
    }  
}   */
 Future<Registros> getRegister(id) async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.child('/$id').get();
      final string = json.encode(response.value);
      final data = json.decode(string);
      final registers = Registros.fromJson(data);
      return registers;
    } catch (e) {
      rethrow;
    }
  }
}