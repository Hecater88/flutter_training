import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:nerfli/src/models/pelicula_model.dart';

class PeliculasProvider{
  String _apikey = 'c68f52d81ca6bb1bcd4627bed8289d96';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  Future<List<Pelicula>> getEnCines() async{
    final url = Uri.https(_url, '3/movie/now_playing', {
        'api_key' : _apikey,
        'language' : _language  
    });

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    final peliculas = new Peliculas.fromJasonList(decodedData['results']);
    return peliculas.items;
  }
}