import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/fast_and_laughs/widget/video_list_item.dart';

class FastAndLaughsScreen extends StatelessWidget {
  const FastAndLaughsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            10,
            (index) {
              return VideoListItem(index: index,);
            },
          ),
        ),
      ),
    );
  }
}
