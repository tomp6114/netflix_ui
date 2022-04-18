import 'package:flutter/material.dart';
import 'package:netflix_app/core/contants/constants.dart';
import 'package:netflix_app/presentation/search/widgets/search_title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left:10.0,right: 10.0),
          child: SearchlistTitle(title: 'Movies & TV'),
        ),
        kHeight,
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10.0),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1.1/1.7,
              children: List.generate(20, (index) {
                return const MainCard();
              }),
            ),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: const DecorationImage(
            image: NetworkImage(
              imageUrl,
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}