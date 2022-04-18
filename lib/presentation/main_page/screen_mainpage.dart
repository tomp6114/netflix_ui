import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/downloads/screen_downloads.dart';
import 'package:netflix_app/presentation/fast_and_laughs/screen_fast_and_laughs.dart';
import 'package:netflix_app/presentation/home/screen_home.dart';
import 'package:netflix_app/presentation/hot_and_new/screen_hot_and_new.dart';
import 'package:netflix_app/presentation/main_page/widgets/bottomnavigation.dart';
import 'package:netflix_app/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({ Key? key }) : super(key: key);

  final _pages=[
    const HomeScreen(),
    const HotAndNewScreen(),
    const FastAndLaughsScreen(),
    const SearchScreen(),
    DownloadsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body:ValueListenableBuilder(valueListenable: indexChangeNotifer, builder: (context,int index,_){
        return _pages[index];
      },),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}