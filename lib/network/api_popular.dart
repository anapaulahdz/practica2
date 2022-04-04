import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practica2/models/popular_model.dart';

class ApiPopular {
  var URL = Uri.parse(
      'https://api.themoviedb.org/3/movie/popular?api_key=85b85ac1d30a78e8ffb16888a7130a2d&language=es-MX&page=1');

  Future<List<PopularModel>?> getAllPopular() async {
    var response = await http.get(URL);
    if (response.statusCode == 200) {
      var popular = jsonDecode(response.body)['results'] as List;
      return popular.map((movie) => PopularModel.fromMap(movie)).toList();
    } else {
      return null;
    }
  }
}
