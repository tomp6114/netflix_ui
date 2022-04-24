
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';

import '../../../data/datas.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.of(context).pop();
        },
        backgroundColor: const Color.fromARGB(255, 3, 3, 3),
        child: const Icon(Icons.close),
      ),

      //appBar: AppBar(title: Text('categoty list'),),
      body: SafeArea(
          child: Container(
            color: Colors.black,
            child: FutureBuilder(
        future: getCategories(),
        builder: (context, snapshot) {
            // print(catagories);
            return ListView.separated(
                itemBuilder: (context, index) => Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          catagoryList[index]["name"],style: GoogleFonts.montserrat(color:kGreyColor),
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: catagoryList.length);
        },
      ),
          )),
    );
  }
}
