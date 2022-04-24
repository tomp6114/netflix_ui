import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';
import '../../../core/contants/constants.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widget.dart';

// ignore: must_be_immutable
class ComingSoonWidget extends StatelessWidget {
  ComingSoonWidget(
      {Key? key,
      required this.index,
      required this.month,
      required this.day,
      required this.movieList})
      : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final index;
  String month;
  String? monthFormate;
  List movieList;
  // ignore: prefer_typing_uninitialized_variables
  final day;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                monthFormate!,
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  color: kGreyColor,
                ),
              ),
              Text(
                day,
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(uri: uri),
              kHeight20,
              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      movieList[index]['original_title'],
                      style: GoogleFonts.montserrat(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.add_alert_outlined,
                        text: "Remind me",
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kWidht,
                      CustomButtonWidget(
                        icon: Icons.info,
                        text: "Info",
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kWidht,
                    ],
                  ),
                ],
              ),
              kHeight,
              Text(
                "Coming on Friday",
                style: GoogleFonts.montserrat(),
              ),
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
              )
            ],
          ),
        ),
      ],
    );
  }
}
