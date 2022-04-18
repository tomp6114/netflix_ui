import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
       body: SafeArea(child: Center(child: Text('Home'),)),
    );
  }
}