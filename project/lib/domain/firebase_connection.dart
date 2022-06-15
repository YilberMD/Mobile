import 'package:firebase_database/firebase_database.dart';
import 'package:project/model/response_firebase.dart';

class FirebaseConnection{

  
   static final FirebaseDatabase database = FirebaseDatabase.instance;
   
   DatabaseReference instanceFirebase(){
     return database.ref('/Registros');
   }
  
  Future<ResponseFirebase> getregisters() async {
    try{
      DatabaseReference _registro = instanceFirebase();
      DataSnapshot response = await _registro.get();
      final registers = ResponseFirebase.fromJson(response.value as List);
      return registers;
    }catch (e){
      rethrow;
    }
  }
  

}