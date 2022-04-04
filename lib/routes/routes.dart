import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica2/screens/add_note_screen.dart';
import 'package:practica2/screens/detail_movie_screen.dart';
import 'package:practica2/screens/notes_screen.dart';
import '../screens/about_us_screen.dart';
import '../screens/fruitapp_screen.dart';
import '../screens/popular_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/fruit': (BuildContext context) => FruitApp(),
    '/notes': (BuildContext context) => NotesScreen(),
    '/add': (BuildContext context) => AddNoteScreen(),
    '/movies': (BuildContext context) => PopularScreen(),
    '/detail': (BuildContext context) => DetailMovieScreen(),
    '/about': (BuildContext context) => AboutUsScreen()
  };
}
