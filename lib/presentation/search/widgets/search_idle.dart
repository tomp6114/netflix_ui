import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/contants/constants.dart';
import 'package:netflix_app/presentation/search/widgets/search_title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w250_and_h141_face/vIgyYkXkg6NC2whRbYjBD7eb3Er.jpg';

class SearchIdleWidget extends StatelessWidget {
  SearchIdleWidget(
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
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchlistTitle(
            title: 'Top Searches',
          ),
          kHeight,
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                String uri = list[index]['poster_path'];
                return TopSearchTile(uri: uri,list:list,index:index);
              },
              separatorBuilder: (ctx, index) => kHeight,
              itemCount: list.length,
            ),
          )
        ],
      ),
    );
  }
}

class TopSearchTile extends StatelessWidget {
   TopSearchTile({
    Key? key,
    required this.uri,
    required this.list,
    required this.index,
  }) : super(key: key);
  final String uri;
   List list;
  final int index;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image:  DecorationImage(
                image: NetworkImage(
                  'http://image.tmdb.org/t/p/w500' + uri,
                ),
                fit: BoxFit.cover),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              list[index]['original_title'].toString(),
              style: GoogleFonts.montserrat(
                color: kWhiteColor,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle,
          color: kWhiteColor,
          size: 45,
        ),
      ],
    );
  }
}
