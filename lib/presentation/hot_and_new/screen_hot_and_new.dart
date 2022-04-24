import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/data/datas.dart';
import 'package:netflix_app/presentation/hot_and_new/widgets/coming_soon_widget.dart';
import '../../core/contants/constants.dart';
import '../widgets/everyones_watching_widget.dart';

class HotAndNewScreen extends StatefulWidget {
  const HotAndNewScreen({Key? key}) : super(key: key);

  @override
  State<HotAndNewScreen> createState() => _HotAndNewScreenState();
}

class _HotAndNewScreenState extends State<HotAndNewScreen> {
  final itemKey1 = GlobalKey();

  final itemKey2 = GlobalKey();
  var upcoming = getUpComming();

  Future scrollToItem(itemKey) async {
    final context = itemKey.currentContext!;
    await Scrollable.ensureVisible(context,
        duration: const Duration(seconds: 1));
  }

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
    return FutureBuilder(
        key: itemKey1,
        future: upcoming,
        builder: (context, snapshot) {
          return ListView.separated(
            //physics: const NeverScrollableScrollPhysics(),
            //scrollDirection: Axis.horizontal,
            //shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (BuildContext context, index) {
              String? day;
              String? month;
              String? date = upcomingList[index]["release_date"];
              //print("212 ${date}");

              if (date != null) {
                day = date[8] + date[9];
                month = date[5] + date[6];
              }
              return ComingSoonWidget(
                  index: index,
                  month: month!,
                  day: day,
                  movieList: upcomingList);
            },
            separatorBuilder: (ctx, index) => const SizedBox(
              height: 18,
            ),
          );
        });
  }

  Widget _buildEveryonesWatching(String name) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          String? day;
          String? month;
          String? date = topratedList[index]["release_date"];
          // print("212 ${date}");

          if (date != null) {
            day = date[8] + date[9];
            month = date[5] + date[6];
          }
          return EveryonesWatchingWidget(
            index: index,
            month: month!,
            day: day,
            movieList: topratedList,
          );
        },
        separatorBuilder: (ctx, index) => const SizedBox(
              height: 18,
            ),
        itemCount: topratedList.length);
  }
}
