import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors/colors.dart';
import '../../core/contants/constants.dart';
import '../home/widgets/custom_button_widget.dart';
import 'video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
    EveryonesWatchingWidget({
    Key? key,
    required this.index,
      required this.month,
      required this.day,
      required this.movieList
  }) : super(key: key);
  final index;
  String month;
  String? monthFormate;
  List movieList;
  final day;

  @override
  Widget build(BuildContext context) {
    String uri = movieList[index]['poster_path'];
    // String movieNameImg = movieList[index]['backdrop_path'];
    switch (month) {
      case "01":
        monthFormate = "Jan";
        break;
      case "02":
        monthFormate = "Feb";
        break;
      case "03":
        monthFormate = "Mar";
        break;
      case "04":
        monthFormate = "Apr";
        break;
      case "05":
        monthFormate = "May";
        break;
      case "06":
        monthFormate = "Jun";
        break;
      case "07":
        monthFormate = "Jul";
        break;
      case "08":
        monthFormate = "Aug";
        break;
      case "09":
        monthFormate = "Sep";
        break;
      case "10":
        monthFormate = "Oct";
        break;
      case "11":
        monthFormate = "Nov";
        break;
      case "12":
        monthFormate = "Dec";
        break;
      default:
        monthFormate = "January";
    }

    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          Text(
            movieList[index]['original_title'],
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight,
          Text(
            movieList[index]['overview'],
            style: GoogleFonts.montserrat(
              color: kGreyColor,
            ),
          ),
          kHeight,
            VideoWidget(uri: uri,),
          kHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              CustomButtonWidget(
                icon: Icons.send_outlined,
                text: "Share",
                iconSize: 25,
                textSize: 15,
              ),
              kWidht,
              CustomButtonWidget(
                icon: Icons.add,
                text: "MyList",
                iconSize: 25,
                textSize: 15,
              ),
              kWidht,
              CustomButtonWidget(
                icon: Icons.play_arrow,
                text: "Play",
                iconSize: 25,
                textSize: 15,
              ),
              kWidht,
              kWidht,
            ],
          ),
        ],
      ),
    );
  }
}
