import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';

import '../../../core/contants/constants.dart';

class NumberCard extends StatelessWidget {
  final int? index;
  final String uri;
  const NumberCard({Key? key, required this.index,required this.uri}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
              height: 200,
            ),
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image:  DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'http://image.tmdb.org/t/p/w500' +
                                                uri,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: -5,
          child: BorderedText(
            strokeColor: kWhiteColor,
            strokeWidth: 5.0,
            child: Text(
              "${index! + 1}",
              style: GoogleFonts.montserrat(
                  fontSize: 120.0,
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationColor: const Color.fromARGB(255, 61, 126, 48)),
            ),
          ),
        ),
      ],
    );
  }
}
