import 'package:flutter/material.dart';


class Menu extends StatefulWidget {

  const Menu({Key? key}) : super(key: key);
   
  @override

   _Menus createState() => _Menus();
  
}
  
  class _Menus extends  State<Menu> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(alignment: Alignment.center,child: const Text("Home"),)
    );
  }   
 }
  
