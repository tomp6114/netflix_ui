import 'package:flutter/material.dart';

import '../../core/contants/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
    required this.uri
  }) : super(key: key);
  final String uri;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 250,
        width: 150,
        decoration:  BoxDecoration(
          borderRadius: kRadius10,
          image:  DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'http://image.tmdb.org/t/p/w500' + uri,
            ),
          ),
        ),
      ),
    );
  }
}
