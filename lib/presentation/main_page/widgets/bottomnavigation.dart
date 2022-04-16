import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifer = ValueNotifier(0);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifer,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          elevation: 0,
          currentIndex: newIndex,
          onTap: (index) {
            indexChangeNotifer.value = index;
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: backgroundColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.collections,
              ),
              label: 'New & Hot',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.emoji_emotions,
              ),
              label: 'Fast Laughs',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_rounded,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.arrow_circle_down,
              ),
              label: 'Downloads',
            ),
          ],
        );
      },
    );
  }
}
