import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/contants/constants.dart';
import 'package:netflix_app/presentation/home/widgets/background_card.dart';
import '../widgets/main_title_card.dart';
import 'widgets/number_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              print(">.........$direction");
              return true;
            },
            child: SafeArea(
              child: Stack(
                children: [
                  ListView(
                    children: [
                      BackgroundCard(),
                      kHeight,
                      const MainTitleCard(
                        title: 'Released in the past year',
                      ),
                      kHeight,
                      const MainTitleCard(
                        title: 'Trending Now',
                      ),
                      kHeight,
                      const NumberTitleCard(),
                      kHeight,
                      const MainTitleCard(
                        title: 'Tense Dramas',
                      ),
                      kHeight,
                      const MainTitleCard(
                        title: 'South Indian Cenima',
                      ),
                      kHeight,
                    ],
                  ),
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                          width: double.infinity,
                          height: 95,
                          color: Colors.black.withOpacity(0.3),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    "https://cdn-images-1.medium.com/max/1200/1*ty4NvNrGg4ReETxqU2N3Og.png",
                                    width: 70,
                                    height: 70,
                                  ),
                                  Spacer(),
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
                                      color: const Color.fromARGB(
                                          255, 30, 92, 143),
                                    ),
                                  ),
                                  kWidht,
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "TV Show",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "Movies",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "Categories",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      : kHeight
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
