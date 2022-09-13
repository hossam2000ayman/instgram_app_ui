import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instgram_app/screens/add_post.dart';
import 'package:instgram_app/screens/favorite.dart';
import 'package:instgram_app/screens/home.dart';
import 'package:instgram_app/screens/profile.dart';
import 'package:instgram_app/screens/search.dart';
import 'package:instgram_app/shared/colors.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  final _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: mobileBackgroundColor,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });

          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: currentPage == 0 ? primaryColor : secondaryColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: currentPage == 1 ? primaryColor : secondaryColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              color: currentPage == 2 ? primaryColor : secondaryColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: currentPage == 3 ? primaryColor : secondaryColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: currentPage == 4 ? primaryColor : secondaryColor,
            ),
            label: '',
          ),
        ],
      ),
      body: PageView(
        onPageChanged: (index) {},
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          HomePage(),
          SearchPage(),
          Add_Post(),
          FavoritePage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
