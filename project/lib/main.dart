import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/views/splash.dart';



void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
//callDataBase();
runApp(const MyApp());
}

/* void callDataBase() {
  DatabaseReference reference = FirebaseDatabase.instance.ref('/Registros');
  reference.onValue.listen((event) {
    final data = event.snapshot.value;
    print(data.toString()); 
  });  
} */



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Splash()
        );

        
  }



}
