import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instgram_app/shared/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          (widthScreen > 600) ? webBackgroundColor : mobileBackgroundColor,
      appBar: (widthScreen > 600)
          ? null
          : AppBar(
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.messenger_outline),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.logout),
                ),
              ],
              backgroundColor: (widthScreen > 600)
                  ? webBackgroundColor
                  : mobileBackgroundColor,
              title: SvgPicture.asset(
                'assets/images/instagram.svg',
                color: primaryColor,
                height: 32,
              ),
            ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: mobileBackgroundColor,
        ),
        margin: EdgeInsets.symmetric(
            vertical: 11, horizontal: widthScreen > 600 ? widthScreen / 6 : 0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 13),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.01,
                        color: Color.fromARGB(125, 78, 91, 110),
                      ),
                      shape: BoxShape.circle,
                      color: Color.fromARGB(125, 78, 91, 110),
                    ),
                    child: CircleAvatar(
                      radius: 33,
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2016/07/10/17/54/kid-1508121__340.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Text(
                    'Sergo Ramos',
                    style: TextStyle(fontSize: 15, color: primaryColor),
                  ),
                  Expanded(
                    child: Text(''),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
            ),
            Image.network(
              fit: BoxFit.cover,
              'https://cdn.pixabay.com/photo/2022/09/04/20/11/plane-7432680_960_720.jpg',
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 11,
              ),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        size: 25,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment_outlined,
                        size: 25,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        size: 25,
                      )),
                  Expanded(
                    child: Text(''),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark_outline,
                        size: 25,
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
              width: double.infinity,
              child: Text(
                '10 Likes',
                style: TextStyle(
                  color: Color.fromARGB(214, 157, 157, 165),
                  fontSize: 18,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 9,
                ),
                Text(
                  'Sergo Ramos ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 189, 196, 199)),
                ),
                Text(' Plane Fly ✈️🌍',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 189, 196, 199))),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 13, 9, 10),
                width: double.infinity,
                child: Text(
                  'View All Comments',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 9, 10),
              width: double.infinity,
              child: Text(
                '10 June 2022',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
