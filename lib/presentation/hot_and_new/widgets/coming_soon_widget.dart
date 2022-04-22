import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';
import '../../../core/contants/constants.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: 450,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  color: kGreyColor,
                ),
              ),
              Text(
                "11",
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
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              kHeight20,
              Row(
                children: [
                  Text(
                    'TALL GIRL 2',
                    style: GoogleFonts.montserrat(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
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
                "Tall Girl 2",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
              Text(
                "Landing the lead in the school musical is a dream come true for jodi,until the pleasure sends her confidence -- and her realtionship -- into a tailspain",
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

