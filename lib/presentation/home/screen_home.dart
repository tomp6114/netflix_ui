import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/contants/constants.dart';
import 'package:netflix_app/presentation/home/widgets/number_card.dart';

import '../widgets/main_card.dart';
import '../widgets/main_title.dart';
import '../widgets/main_title_card.dart';
import 'widgets/number_title_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    height: 600,
                    width: double.infinity,
                    //color: Colors.blueAccent,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        //fit: BoxFit.cover,
                        image: NetworkImage(kMainImage),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _playButton(),
                      ],
                    ),
                  ),
                ],
              ),
              kHeight,
              MainTitleCard(
                title: 'Released in the past year',
              ),
              kHeight,
              MainTitleCard(
                title: 'Trending Now',
              ),
              kHeight,
              NumberTitleCard(),
              kHeight,
              MainTitleCard(
                title: 'Tense Dramas',
              ),
              kHeight,
              MainTitleCard(
                title: 'South Indian Cenima',
              ),
              kHeight,
            ],
          ),
        ),
      ),
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kWhiteColor),
      ),
      onPressed: () {},
      icon: Icon(
        Icons.play_arrow,
        color: kBlackColor,
        size: 25,
      ),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          "Play",
          style: GoogleFonts.montserrat(color: kBlackColor, fontSize: 15),
        ),
      ),
    );
  }
}
