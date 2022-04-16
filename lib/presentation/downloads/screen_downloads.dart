import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/contants/constants.dart';
import 'package:netflix_app/presentation/widgets/appbar_widget.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({Key? key}) : super(key: key);

  final imageList = [
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg",
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/x2LSRK2Cm7MZhjluni1msVJ3wDF.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/cXUqtadGsIcZDWUTrfnbDjAy8eN.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              kWidht,
              Icon(
                Icons.settings_outlined,
                color: kWhiteColor,
              ),
              kWidht,
              Text(
                'Smart Downloads',
                style: GoogleFonts.montserrat(fontSize: 15.0),
              ),
            ],
          ),
          Text('Introducing Downloads for you'),
          Text(
              'We will download a personalised selection of movies and shows for you, so there is always something to watch on your device'),
          Container(
            width: size.width,
            height: size.width,
            //color: kWhiteColor,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 102, 100, 100),
                  radius: size.width * 0.37,
                ),
                DownloadsImageWidget(
                  imageList: imageList[0],
                  angle: 20.0,
                  margin: EdgeInsets.only(left: 150,bottom: 29), size: Size(size.width*0.4, size.height*0.29),
                ),
                DownloadsImageWidget(
                  imageList: imageList[1],
                  angle: -20.0,
                  margin: EdgeInsets.only(right: 150,bottom: 29,), size: Size(size.width*0.4, size.height*0.29),
                ),
                DownloadsImageWidget(
                  imageList: imageList[2],
                  angle: 0.0,
                  margin: EdgeInsets.only(bottom: 10), size: Size(size.width*0.43, size.height*0.30),
                )
              ],
            ),
          ),
          MaterialButton(
            color: kButtonColorBlue,
            child: Text(
              'Set up',
              style: GoogleFonts.montserrat(
                color: kWhiteColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {},
          ),
          MaterialButton(
            color: kWhiteColor,
            child: Text(
              'See what you can download',
              style: GoogleFonts.montserrat(
                color: kBlackColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height, 
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: NetworkImage(
              imageList,
            ),
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}
