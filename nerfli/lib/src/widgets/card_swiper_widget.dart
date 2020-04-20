import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:nerfli/src/models/pelicula_model.dart';

class CardSwiper extends StatelessWidget {
  
  final List<Pelicula> peliculas;

  CardSwiper({@required this.peliculas});

  @override
  Widget build(BuildContext context) {

    //Calcula el tamaño del dispositivo
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding:EdgeInsets.only(top:5.0),
     
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * 0.6,
        itemHeight: _screenSize.height * 0.5,
        itemBuilder: (BuildContext context,int index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child:FadeInImage(
              image: NetworkImage(peliculas[index].getPosterImg() ),
              placeholder: AssetImage('assets/img/no-image.jpg'),
              fit:BoxFit.fill,
            )
          );
          
        },
          itemCount: peliculas.length,
          /* pagination: new SwiperPagination(),
          control: new SwiperControl(), */
        ),
    );
  }
}