import 'package:flutter/material.dart';
import 'package:three_social_profiles/profile_3.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile3()),
            );
          },
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 24,
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[

          Center(
            child: Image.asset(
              "assets/images/background2.jpg",
              fit: BoxFit.cover,
              width: size.width,
              height: size.height,
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 480,
              padding: EdgeInsets.symmetric(horizontal: 16,),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 16,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Row(
                          children: <Widget>[

                            CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage("assets/images/background2.jpg"),
                            ),

                            SizedBox(
                              width: 12,
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text(
                                  "Garrett Watson",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(
                                  height: 4,
                                ),

                                Text(
                                  "Flutter Developer",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),

                              ],
                            )

                          ],
                        ),

                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFE4395F),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24,),
                          child: Center(
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                  Divider(
                    color: Colors.grey[400],
                  ),

                  Container(
                    height: 64,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        Container(
                          width: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Text(
                                "FRIENDS", 
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              
                              SizedBox(
                                height: 4,
                              ),

                              Text(
                                "2307", 
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                            ],
                          ),
                        ),

                        Container(
                          width: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Text(
                                "FOLLOWING", 
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              
                              SizedBox(
                                height: 4,
                              ),

                              Text(
                                "364", 
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                            ],
                          ),
                        ),

                        Container(
                          width: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Text(
                                "FOLLOWER", 
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              
                              SizedBox(
                                height: 4,
                              ),

                              Text(
                                "175", 
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                  Divider(
                    color: Colors.grey[400],
                  ),

                  Text(
                    "Friends", 
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Container(
                    height: 70,
                    child: ListView.builder(
                      padding: EdgeInsets.all(8),
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 56,
                          width: 56,
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/friends_" + index.toString() + ".jpg"),
                            )
                          )
                        );
                      }
                    ),
                  ),

                  SizedBox(
                    height: 8,
                  ),

                  Text(
                    "Photos", 
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Container(
                    height: 160,
                    child: ListView.builder(
                      padding: EdgeInsets.all(8),
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 12,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 160,
                          width: 110,
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/photo_" + index.toString() + ".jpg"),
                            )
                          )
                        );
                      }
                    ),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}