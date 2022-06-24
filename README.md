# mobile

Proyecto Mobile Easy Store

Descripcion :  Aplicacion Mobile desarrollada en flutter ,dart, con conexion a Realtime Database
 firebase .

Cómo utilizar
Paso 1:

Descargue o clone este repositorio usando el siguiente enlace:

https://github.com/zubairehman/flutter-boilerplate-project.git
Paso 2:

Vaya a la raíz del proyecto y ejecute el siguiente comando en la consola para obtener las dependencias requeridas:

flutter pub get 



Main
Este es el punto de partida de la aplicación. Todas las configuraciones de nivel de aplicación se definen en este archivo, es decir, tema,  título,  etc.

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/views/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Splash());
  }
}

Imagen:

![Screenshot_1656098955](https://user-images.githubusercontent.com/105758362/175655920-42e2ecb8-656e-4a7c-9f53-b9726b408d23.png)




