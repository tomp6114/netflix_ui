import 'package:flutter/material.dart';

import '../../core/contants/constants.dart';
import 'main_card.dart';
import 'main_title.dart';

class MainTitleCard extends StatelessWidget {
  MainTitleCard(
      {Key? key,
      required this.title,
      required this.getFuture,
      required this.list})
      : super(key: key);
  final String title;
  final getFuture;
  List list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
          maxHeight: 220,
          child: FutureBuilder(
            future: getFuture,
            builder: (context, items) {
              if (items.hasData) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      String uri = list[index]['poster_path'];
                      return MainCard(uri: uri,);
                    },
                    separatorBuilder: (ctx, index) => const SizedBox(
                          width: 5,
                        ),
                    itemCount: list.length);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ],
    );
  }
}
