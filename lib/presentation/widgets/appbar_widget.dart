import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/contants/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55.0),
      child: Row(
        children: [
          kWidht,
          Text(
            title,
            style: GoogleFonts.montserrat(
                fontSize: 30.0, fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          const Icon(
            Icons.cast,
            size: 30,
            color: Colors.white,
          ),
          kWidht,
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: const Color.fromARGB(255, 30, 92, 143),
            ),
          ),
          kWidht,
        ],
      ),
    );
  }
}
