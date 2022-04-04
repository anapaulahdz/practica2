import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../models/trailer_model.dart';

class TrailerDetailsView extends StatelessWidget {
  TrailerDetailsView({Key? key, TrailerModel? trailerModel}) : super(key: key);

  TrailerModel? trailerModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 5.0),
                blurRadius: 2.5)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            child: Column(
              children: [
                YoutubePlayer(
                  controller: YoutubePlayerController(
                    initialVideoId: //'3U7KaI_NPGg',
                        '${trailerModel!.key}', //'3U7KaI_NPGg', //Add videoID.
                    flags: YoutubePlayerFlags(
                      hideControls: false,
                      controlsVisibleAtStart: true,
                      autoPlay: false,
                      mute: false,
                    ),
                  ),
                  showVideoProgressIndicator: true,
                  // progressIndicatorColor: AppColors.primary,
                ),
                ListView(
                  children: [
                    ListTile(
                      title: Text('FruitApp'),
                      subtitle: Text('challenge widget'),
                      leading: Icon(Icons.dining_outlined, color: Colors.amber),
                      trailing: Icon(Icons.chevron_right, color: Colors.black),
                      // onTap: () {
                      //   Navigator.pushNamed(context, '/fruit');
                      // },
                    ),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
