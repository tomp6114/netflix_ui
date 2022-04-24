import 'package:flutter/material.dart';

import '../../../core/contants/constants.dart';
import '../../../data/datas.dart';
import '../../widgets/main_title.dart';
import 'number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
    required this.title,
  }) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final title;

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
              future: getNowPlaying(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        String uri = nowplayingList[index]['poster_path'];
                        return NumberCard(index: index, uri: uri);
                      },
                      separatorBuilder: (ctx, index) => const SizedBox(
                            width: 5,
                          ),
                      itemCount: 10);
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
        )
      ],
    );
  }
}
