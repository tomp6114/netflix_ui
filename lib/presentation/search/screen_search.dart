import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/contants/constants.dart';
import 'package:netflix_app/data/datas.dart';
import 'package:netflix_app/presentation/search/widgets/search_idle.dart';
import 'package:netflix_app/presentation/search/widgets/search_result.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool search = false;
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoSearchTextField(
                controller: controller,
                onSubmitted: (value) {
                  setState(() {
                    search = true;
                  });
                  
                },
                onSuffixTap: () {
                  setState(() {
                    search = false;
                    controller.clear();
                  });
                },
                backgroundColor: Colors.grey.withOpacity(0.3),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: GoogleFonts.montserrat(color: Colors.white),
              ),
            ),
            kHeight,
             //Expanded(child: SearchIdleWidget(getFuture: getUpComming(), list: upcomingList, title: "hello"))
             Expanded(child: SearchResultWidget(getFuture: getTrending(), list: trendingList, title: "hello"))
          ],
        ),
      ),
    );
  }
}
