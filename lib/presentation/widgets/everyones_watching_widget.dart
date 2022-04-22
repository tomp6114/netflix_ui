import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors/colors.dart';
import '../../core/contants/constants.dart';
import '../home/widgets/custom_button_widget.dart';
import 'video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          Text(
            "Friends",
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight,
          Text(
            "This hit sitcom follows the merry misadventures of six 20-something pals as they navigate pitfalls of work,life and love in 1990's Manhattan.",
            style: GoogleFonts.montserrat(
              color: kGreyColor,
            ),
          ),
          kHeight20,
          const VideoWidget(),
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
