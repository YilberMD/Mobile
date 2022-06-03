import 'package:flutter/material.dart';
import 'package:project/views/list_detail.dart';

import 'AnimeData.dart';

// ignore: camel_case_types
class ListView_1 extends StatelessWidget {
   
   ListView_1({Key? key}) : super(key: key);
 
      static List<String> anime=["Dragon Ball Super",
                                 "One Push Man", 
                                 "Demon Slayer",
                                 "Seven deadly sings",
                                 "Naruto Shippuden",
                                 "Kengan Ashura",
                                 "Captain Tsubasa",
                                 "Caballeros del Zodiaco",
                                 "One Piece",
                                 "X-men"
                                 ];
      
      static List url =[
                        'https://www.dondeir.com/wp-content/uploads/2020/05/anime-streaming-plataformas.jpg',
                        'https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2021/06/genos-one-punch-man-personajes-mas-poderosos.jpg?resize=1280%2C720&quality=80&ssl=1',
                        'https://media.timeout.com/images/105528586/750/422/image.jpg',
                        'https://images2-mega.cdn.mdstrm.com/etcetera/2019/09/24/8909_1_5d8a2eea6d2a8.jpg?d=500x500',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA9siJzH93xfaJ2LeI30js1eeBcTPx7a790lfxtOHHRMM37FIkzdB9fI97cI4wdJjXPf0&usqp=CAU',
                        'https://occ-0-1722-1723.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABY4MteAj1c6PfTU-xYiaChfe583MokXYxenkCnUPudA3fzHQAGa0EuhoKt_fG1hGRNyt3kWWnuzT0tDyHUsQmlYt-2GxPL4tR9JH.jpg?r=3e7',
                        'https://www.geekmi.news/__export/1616368894121/sites/debate/img/2021/03/21/captain_tsubasa.jpg_976912859.jpg',
                        'https://alfabetajuega.com/hero/2021/07/Cual-es-el-orden-para-ver-Los-Caballeros-del-Zodiaco.jpg?width=1200&aspect_ratio=1200:631',
                        'https://phantom-marca.unidadeditorial.es/afd195d58321e2089226a0a18fdaf305/resize/1320/f/jpg/assets/multimedia/imagenes/2022/04/25/16508822676282.jpg',
                        'https://images.pluto.tv/series/60c3ab9b413741001afab4f1/featuredImage.jpg?fill=blur&fit=fill&fm=jpg&h=900&q=70&w=1600&auto=&ixlib=react-9.1.5'];
      
      
      
      final List<AnimeData> animedata = List.generate(
           anime.length,
          (index) 
          => AnimeData(anime[index],'${url[index]}'));





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anime"),
      ),
      body: ListView.builder(
            itemCount: anime.length ,
            physics: const BouncingScrollPhysics(),
            itemBuilder : (context,index){
              return Card(
                child: ListTile(
                leading: CircleAvatar(  
                  backgroundImage: Image.network(url[index]!).image,                                 
                   ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: ((context) => AnimeDetail(data:animedata[index],))));
                  },
                title: Text (animedata[index].name),
                ));
            })
    );
  }
}

