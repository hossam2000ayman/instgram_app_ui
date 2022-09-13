import 'package:flutter/material.dart';
import 'package:instgram_app/shared/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: Text('Hossam Ayman'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 22),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.01,
                    color: Color.fromARGB(125, 78, 91, 110),
                  ),
                  shape: BoxShape.circle,
                  color: Color.fromARGB(125, 78, 91, 110),
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2016/07/10/17/54/kid-1508121__340.jpg'),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Post',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          '10',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          '15',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 21, 0, 0),
            width: double.infinity,
            child: Text(
              'Intelligent Boy',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: Colors.white,
            thickness: widthScreen > 600 ? 0.66 : 0.74,
          ),
          SizedBox(
            height: 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Colors.grey,
                  size: 24.0,
                ),
                label: Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 17),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(0, 90, 103, 223),
                    ),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(
                          vertical: widthScreen > 600 ? 19 : 10,
                          horizontal: 33),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                        side: BorderSide(
                          color: Color.fromARGB(109, 255, 255, 255),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  color: Colors.grey,
                  size: 24.0,
                ),
                label: Text(
                  'Log Out',
                  style: TextStyle(fontSize: 17),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(143, 255, 55, 112),
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                        vertical: widthScreen > 600 ? 19 : 10, horizontal: 33),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 9,
          ),
          Divider(
            color: Colors.white,
            thickness: widthScreen > 600 ? 0.66 : 0.74,
          ),
          SizedBox(
            height: 19,
          ),
          Expanded(
            child: Padding(
              padding: widthScreen > 600
                  ? EdgeInsets.all(66.0)
                  : EdgeInsets.all(3.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      fit: BoxFit.cover,
                      'https://cdn.pixabay.com/photo/2022/09/04/20/11/plane-7432680_960_720.jpg',
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: double.infinity,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
