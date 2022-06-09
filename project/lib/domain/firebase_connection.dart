import 'package:firebase_database/firebase_database.dart';

class FirebaseConnection{

  
   static final FirebaseDatabase database = FirebaseDatabase.instance;
   
   DatabaseReference instanceFirebase(){
     return database.ref('/Registros');
   }
  
  

}