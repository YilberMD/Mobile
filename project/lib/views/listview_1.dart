import 'package:flutter/material.dart';

class ListView_1 extends StatelessWidget {
   
   ListView_1({Key? key}) : super(key: key);


  final List<Map<String, dynamic>> _anime =[
        {
          "image" : "https://www.dondeir.com/wp-content/uploads/2020/05/anime-streaming-plataformas.jpg",
          "name"  :  "Dragon Ball Super"
        },
         {
          "image" : "https://img4.hulu.com/user/v3/artwork/54a25fcf-a472-4d40-9968-13e2957e5abf?base_image_bucket_name=image_manager&base_image=93e40acb-7a9c-437c-8bb6-8af64f072ffb&size=550x825&format=jpeg",
          "name"  :  "One Push Man"
        },
         {
          "image" : "https://media.timeout.com/images/105528586/750/422/image.jpg",
          "name"  :  "Demon Slayer"
        },
         {
          "image" : "https://images2-mega.cdn.mdstrm.com/etcetera/2019/09/24/8909_1_5d8a2eea6d2a8.jpg?d=500x500",
          "name"  :  "Seven deadly sings"
        },
         {
          "image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA9siJzH93xfaJ2LeI30js1eeBcTPx7a790lfxtOHHRMM37FIkzdB9fI97cI4wdJjXPf0&usqp=CAU",
          "name"  :  "Naruto Shippuden"
        },
         {
          "image" : "https://occ-0-1722-1723.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABY4MteAj1c6PfTU-xYiaChfe583MokXYxenkCnUPudA3fzHQAGa0EuhoKt_fG1hGRNyt3kWWnuzT0tDyHUsQmlYt-2GxPL4tR9JH.jpg?r=3e7",
          "name"  :  "Kengan Ashura"
        },
        



  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Anime"),
      ),
      body: ListView.builder(
            itemCount: _anime.length ,
            physics: const BouncingScrollPhysics(),
            itemBuilder : (_,index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:Image.network(_anime[index]["image"]!).image ,
                  ),
                title: Text (_anime[index]["name"]!),
                );
            })
    );
  }
}