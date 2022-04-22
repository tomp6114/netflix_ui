import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/hot_and_new/widgets/coming_soon_widget.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

import '../../core/contants/constants.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/everyones_watching_widget.dart';

class HotAndNewScreen extends StatelessWidget {
  const HotAndNewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: AppBar(
              title: Text(
                "New & Hot",
                style: GoogleFonts.montserrat(
                    fontSize: 30.0, fontWeight: FontWeight.w700),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  size: 30,
                  color: Colors.white,
                ),
                kWidht,
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: const Color.fromARGB(255, 30, 92, 143),
                    ),
                  ),
                ),
                kWidht,
              ],
              bottom: TabBar(
                isScrollable: true,
                labelColor: kBlackColor,
                labelStyle: GoogleFonts.montserrat(fontSize: 16),
                unselectedLabelColor: kWhiteColor,
                indicator: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: kRadius30,
                ),
                tabs: const [
                  Tab(
                    text: "🍿 Coming soon",
                  ),
                  Tab(
                    text: "👀 Everyones Watching",
                  )
                ],
              ),
            ),
          ),
        ),
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: TabBarView(
            children: [
              _buildComingSoon(),
              _buildEveryonesWatching("Everyones Watching"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) => ComingSoonWidget());
  }

  Widget _buildEveryonesWatching(String name) {
    return ListView.builder(
      itemCount: 10, 
      itemBuilder: (BuildContext context, index) => const EveryonesWatchingWidget(),
    );
  }
}
