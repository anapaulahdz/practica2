import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/trailer_model.dart';

class ApiTrailer {
  var URL = Uri.parse(
      'https://api.themoviedb.org/3/movie/508947/videos?api_key=f0b8fbae8f90ee6d5b28cd6dad9ff89b');
  //print(URL);${movie['id']} 508947

  Future<List<TrailerModel>?> getAllTrailer() async {
    var response = await http.get(URL);
    if (response.statusCode == 200) {
      var trailer = jsonDecode(response.body)['results'] as List;
      // trailer.Array.multi([1]);
      // print(trailer.map((movie) => TrailerModel.fromMap(movie)).toList());
      return trailer
          .where((element) => element['type'] == 'Trailer')
          .map((movie) => TrailerModel.fromMap(movie))
          .toList();
    } else {
      return null;
    }
  }
}
