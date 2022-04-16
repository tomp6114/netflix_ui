import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class HotAndNewScreen extends StatelessWidget {
  const HotAndNewScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(child: Center(child: Text('Hot and New'),)),
    );
  }
}