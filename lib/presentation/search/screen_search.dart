import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Text('Search'),
        ),
      ),
    );
  }
}
