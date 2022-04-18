import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class FastAndLaughsScreen extends StatelessWidget {
  const FastAndLaughsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Text('FastAndLaughsScreen'),
        ),
      ),
    );
  }
}
