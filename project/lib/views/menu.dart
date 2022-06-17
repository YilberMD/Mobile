import 'dart:ui';
import 'package:flutter/material.dart';


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
   
  @override
   State<Menu> createState() => _Menus();
  
   }
  
  
  class _Menus extends  State<Menu> {
    int _selectedIndex = 0;
  
 static const TextStyle _options = TextStyle(fontSize: 18 ,fontWeight:  FontWeight.bold);
   
 static const List<Widget> _widgets =  <Widget>[

 Text('Home', style: _options,),
 Text('Services', style: _options,),
 Text('Settings', style: _options,),
 
 ];
 
 
 void _onItemTapped(int index){
   setState(() {
  _selectedIndex = index;
   }
  );}
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.purple,
        title: const Text('Easy Store'),
      ),
       body: Center(
        child : _widgets.elementAt(_selectedIndex),
        ),
         bottomNavigationBar: BottomNavigationBar(
          items:const  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:  Icon(Icons.home), 
              label: 'home',
              backgroundColor: Colors.red,
         ),
            BottomNavigationBarItem(
              icon: Icon(Icons.room_service ),
              label: 'room service',
              backgroundColor: Colors.green,         
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
              backgroundColor: Colors.purple
            ),
         ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.deepPurple,
          onTap: _onItemTapped,
         ),
     );
   }   
 }
  
