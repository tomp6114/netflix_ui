import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchlistTitle extends StatelessWidget {
  final String title;
  const SearchlistTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}