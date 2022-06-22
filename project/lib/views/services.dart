import 'package:flutter/material.dart';


// ignore: camel_case_types
class Settings extends StatelessWidget {
   
   const Settings({Key? key}) : super(key: key);
 
 
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
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemCount: games.length,
      itemBuilder: (_, index) {
        return CardCustom(games[index]);
      },
    ));
  }
}

class CardCustom extends StatelessWidget {
  const CardCustom(Map<String, String> gam, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        color: Color.fromARGB(161, 235, 236, 238),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: 
        SizedBox(
          width: 370,
          height: 120,
          child: Center(child: Text('games'),
          
          ),
        ),
      ),
    );
  }
}


