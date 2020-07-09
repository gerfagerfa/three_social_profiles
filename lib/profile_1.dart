import 'package:flutter/material.dart';
import 'package:three_social_profiles/profile_2.dart';

class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/background1.jpg"), 
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[

                      SizedBox(
                        height: 36,
                      ),

                      CircleAvatar(
                        radius: 48,
                        backgroundImage: AssetImage("assets/images/avatar1.jpg"),
                      ),

                      SizedBox(
                        height: 16,
                      ),

                      Text(
                        "Derrick Estrada",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),

                      SizedBox(
                        height: 4,
                      ),

                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),

                      Expanded(
                        child: Container(),
                      ),

                      Container(
                        height: 64,
                        color: Colors.black.withOpacity(0.4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[

                            Expanded(
                              child: Container(),
                            ),

                            Container(
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  Text(
                                    "FRIENDS", 
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                  ),
                                  
                                  SizedBox(
                                    height: 4,
                                  ),

                                  Text(
                                    "2307", 
                                    style: TextStyle(
                                      color: Colors.white,
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
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                  ),
                                  
                                  SizedBox(
                                    height: 4,
                                  ),

                                  Text(
                                    "364", 
                                    style: TextStyle(
                                      color: Colors.white,
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
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                  ),
                                  
                                  SizedBox(
                                    height: 4,
                                  ),

                                  Text(
                                    "175", 
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            Expanded(
                              child: Container(),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                Material(
                  elevation: 1,
                  child: Container(
                    height: 56,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        Icon(
                          Icons.web,
                          color: Colors.black,
                          size: 28,
                        ),

                        Icon(
                          Icons.image,
                          color: Colors.black,
                          size: 28,
                        ),

                        Icon(
                          Icons.play_circle_outline,
                          color: Colors.black,
                          size: 28,
                        ),

                      ],
                    ),
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height * 0.60 - 56,
                  padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 24,),
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    physics: BouncingScrollPhysics(),
                    children: List.generate(12, (index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/photo_" + index.toString() + ".jpg"), 
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
                  ),
                ),

              ],
            ),
          
            Positioned(
              top: 32,
              left: 16,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile2()),
                  );
                },
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}