import 'package:flutter/material.dart';

import '../../core/contants/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 250,
        width: 150,
        decoration:  BoxDecoration(
          borderRadius: kRadius10,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cOkx3uu5FVgC902Q6Y3MxLpBWbX.jpg",
            ),
          ),
        ),
      ),
    );
  }
}
