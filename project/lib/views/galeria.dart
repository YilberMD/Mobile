import 'package:flutter/material.dart';


// ignore: camel_case_types
class Galeria extends StatelessWidget {
   
   const Galeria({Key? key}) : super(key: key);
 
 
  static const List<Map<String, String>> games = [
    {
      "image":
          "https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png",
      "name": "Roblox"
    },
    {
      "image":
          "https://i0.wp.com/hipertextual.com/wp-content/uploads/2020/12/silent-hill-1.jpg?fit=1200%2C736&quality=50&strip=all&ssl=1",
      "name": "Silent Hills"
    },
    {
      "image":
          "https://static.wikia.nocookie.net/doblaje/images/b/be/Forzahorizon5_keyart.jpg/revision/latest?cb=20220225074339&path-prefix=es",
      "name": "Forza Horizon 5"
    },
    {
      "image":
          "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_FinalFantasyXX2HDRemaster_image1600w.jpg",
      "name": "Final fantasy"
    },
    {
      "image":
          "https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png",
      "name": "Roblox"
    },
    {
      "image":
          "https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/09/02/6130d99519f60.png",
      "name": "Roblox"
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(  
          scrollDirection: Axis.vertical,
      shrinkWrap: true,       
      itemCount: games.length,
      itemBuilder: (_, index) {
       
        return miCardImage(index);
      
      },
    ));
  }
  
  miCardImage(index) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin:const EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(games[index]['image']!),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(games[index]['name']!),
          ),
        ],
      ),
    );
  }
}





