import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';


import '../../../data/datas.dart';

// ignore: must_be_immutable
class VideoListItem extends StatelessWidget {
  int index;
  VideoListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FutureBuilder(
          future: getUpComming(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              String uri = upcomingList[index]['poster_path'];
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('http://image.tmdb.org/t/p/w500' + uri),
                )),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left side
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_mute_outlined,
                      color: kWhiteColor,
                      size: 30,
                    ),
                  ),
                ),
                //Right side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical:10.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/x2LSRK2Cm7MZhjluni1msVJ3wDF.jpg",
                        ),
                      ),
                    ),
                    Text(
                      'abc',
                      style: GoogleFonts.montserrat(fontSize: 16),
                    ),
                    const VideoActionsWidget(
                        icon: Icons.emoji_emotions, title: 'LOL'),
                    const VideoActionsWidget(icon: Icons.add, title: 'My List'),
                    const VideoActionsWidget(icon: Icons.share, title: 'Share'),
                    const VideoActionsWidget(
                        icon: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  const VideoActionsWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 40),
          Text(
            title,
            style: GoogleFonts.montserrat(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
