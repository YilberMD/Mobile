import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:project/views/listview_1.dart';



void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
callDataBase();
runApp(const MyApp());
}

void callDataBase() {
  DatabaseReference reference = FirebaseDatabase.instance.ref('/Registros');
  reference.onValue.listen((event) {
    final data = event.snapshot.value;
    print(data.toString()); 
  });  
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: ListView_1()
        );

        
  }



}
