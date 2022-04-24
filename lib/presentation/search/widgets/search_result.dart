import 'package:flutter/material.dart';
import 'package:netflix_app/core/contants/constants.dart';
import 'package:netflix_app/presentation/search/widgets/search_title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg";

class SearchResultWidget extends StatelessWidget {
  SearchResultWidget(
      {Key? key,
      required this.getFuture,
      required this.list,
      required this.title})
      : super(key: key);
  final String title;
  final getFuture;
  List list;

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: SearchlistTitle(title: 'Movies & TV'),
        ),
        kHeight,
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: FutureBuilder(
              future: getFuture,
              builder: (context,items) {
                if(items.hasData){
                  return GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1.1 / 1.7,
                  children: List.generate(list.length, (index) {
                    String uri = list[index]['poster_path'];
                    return  MainCard(uri: uri);
                  }),
                );
                }else{
                  return Center(child: CircularProgressIndicator());
                }
                
              }
            ),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key,required this.uri}) : super(key: key);
  final String uri;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image:  DecorationImage(
            image: NetworkImage(
              'http://image.tmdb.org/t/p/w500' + uri,
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
