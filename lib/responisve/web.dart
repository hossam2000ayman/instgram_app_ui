import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instgram_app/screens/add_post.dart';
import 'package:instgram_app/screens/favorite.dart';
import 'package:instgram_app/screens/home.dart';
import 'package:instgram_app/screens/profile.dart';
import 'package:instgram_app/screens/search.dart';
import 'package:instgram_app/shared/colors.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  int currentPage = 0;
  final _pageController = PageController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  navigate2Screen(int indexx) {
    _pageController.jumpToPage(indexx);
    setState(() {
      currentPage = indexx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: SvgPicture.asset(
          'assets/images/instagram.svg',
          color: primaryColor,
          height: 32,
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {

                navigate2Screen(0);
              });
            },
            icon: Icon(
              Icons.home,
              color: currentPage == 0 ? primaryColor : secondaryColor,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {

                navigate2Screen(1);
              });
            },
            icon: Icon(
              Icons.search,
              color: currentPage == 1 ? primaryColor : secondaryColor,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {

                navigate2Screen(2);
              });
            },
            icon: Icon(Icons.add_a_photo),
            color: currentPage == 2 ? primaryColor : secondaryColor,
          ),
          IconButton(
            onPressed: () {
              setState(() {

                navigate2Screen(3);
              });
            },
            icon: Icon(
              Icons.favorite,
              color: currentPage == 3 ? primaryColor : secondaryColor,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {

                navigate2Screen(4);
              });
            },
            icon: Icon(
              Icons.person,
              color: currentPage == 4 ? primaryColor : secondaryColor,
            ),
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
