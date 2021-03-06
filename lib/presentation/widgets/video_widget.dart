import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/contants/constants.dart';

class VideoWidget extends StatelessWidget {
   const VideoWidget({
    Key? key,
    required this.uri,
  }) : super(key: key);
  final  String uri;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            'http://image.tmdb.org/t/p/w500' + uri,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            radius: 22,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off_sharp,
                color: kWhiteColor,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
