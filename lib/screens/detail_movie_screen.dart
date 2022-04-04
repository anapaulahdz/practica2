import 'package:flutter/material.dart';
import 'package:practica2/views/trailer_details_view.dart';

import '../models/trailer_model.dart';
import '../network/api_trailer.dart';

class DetailMovieScreen extends StatefulWidget {
  DetailMovieScreen({Key? key}) : super(key: key);

  @override
  State<DetailMovieScreen> createState() => _DetailMovieScreenState();
}

class _DetailMovieScreenState extends State<DetailMovieScreen> {
  ApiTrailer? apiTrailer;
  @override
  void initState() {
    super.initState();
    apiTrailer = ApiTrailer();
  }

  @override
  Widget build(BuildContext context) {
    final movie =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detailed movies"),
      ),
      body: FutureBuilder(
          future: apiTrailer!.getAllTrailer(),
          builder: (BuildContext context,
              AsyncSnapshot<List<TrailerModel>?> snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Ocurrio un error en la solicitud"),
              );
            } else {
              if (snapshot.connectionState == ConnectionState.done) {
                return _ListTrailerMovies(snapshot.data);
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }
          }),
    );
  }

  Widget _ListTrailerMovies(List<TrailerModel>? movies) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
          itemBuilder: (context, index) {
            TrailerModel trailer = movies![index];
            return TrailerDetailsView(
              trailerModel: trailer,
            );
          },
          separatorBuilder: (_, __) => Divider(
                height: 10,
              ),
          itemCount: movies!.length),
    );
  }
}
