import 'dart:math';

import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AboutUsScreen extends StatefulWidget {
  AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  CameraPosition _position =
      CameraPosition(target: LatLng(20.541555483951704, -100.81267152931454));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(initialCameraPosition: _position),
      floatingActionButton: CircularMenu(
          startingAngleInRadian: pi, //3.141592654, //pi,
          endingAngleInRadian: 6.28, //6.28,
          radius: 80, //80,
          items: [
            CircularMenuItem(
                onTap: () {}, icon: (Icons.map_outlined), color: Colors.green),
            CircularMenuItem(
                onTap: () {},
                icon: (Icons.map_sharp),
                color: Color.fromARGB(255, 76, 109, 175)),
            CircularMenuItem(
                onTap: () {},
                icon: (Icons.maps_home_work),
                color: Color.fromARGB(255, 222, 220, 60)),
            CircularMenuItem(
                onTap: () {},
                icon: (Icons.maps_ugc),
                color: Color.fromARGB(255, 212, 86, 32)),
            CircularMenuItem(
                onTap: () {},
                icon: (Icons.map_rounded),
                color: Color.fromARGB(255, 117, 44, 133))
          ]),
    );
  }
}
