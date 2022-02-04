import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:little_sparrow/screens/AboutPPD/about_ppd.dart';
import 'package:little_sparrow/screens/AboutUs/about_us.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Color(0xfff27aa8),
          //color set to transperent or set your own color
          statusBarIconBrightness: Brightness.dark,
          //set brightness for icons, like dark background light icons
        )
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xfff27aa8),
        body: SafeArea(
          child: Stack(
            children: <Widget>[

              // Screen Bg Image
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/images/black_woman.jpg",
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),

                        // Notification and Setting Icon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //Notification
                            InkWell(
                              onTap: (){},
                              child: Image.asset(
                                "assets/images/bell.png",
                                height: 30,
                                color: Colors.white,
                              ),
                            ),
                            //Setting
                            InkWell(
                              onTap: (){},
                              child: Image.asset(
                                "assets/images/gear.png",
                                height: 30,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),

                        const SizedBox(height: 20,),

                        GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          primary: false,
                          children: <Widget>[
                            // Postpartum Depression
                            InkWell(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const AboutPPD()
                                      )
                                  );
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/images/PPD.png",
                                          height: 120,
                                        ),

                                        const Text(
                                          "About PPD",
                                          style: TextStyle(
                                              fontFamily: "Lemon Milk",
                                              fontSize: 18,
                                              color: Colors.black
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            //Community
                            InkWell(
                                onTap: (){},
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const SizedBox(),
                                        Image.asset(
                                          "assets/images/community.png",
                                          height: 80,
                                        ),
                                        const SizedBox(),
                                        const Text(
                                          "Community",
                                          style: TextStyle(
                                              fontFamily: "Lemon Milk",
                                              fontSize: 18,
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            //Appointment
                            InkWell(
                                onTap: (){},
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const SizedBox(),
                                        Image.asset(
                                          "assets/images/appointment.png",
                                          height: 80,
                                        ),
                                        const SizedBox(),
                                        const Text(
                                          "Appointment",
                                          style: TextStyle(
                                              fontFamily: "Lemon Milk",
                                              fontSize: 18,
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            //Diary
                            InkWell(
                                onTap: (){},
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const SizedBox(),
                                        Image.asset(
                                          "assets/images/diary.png",
                                          height: 80,
                                        ),
                                        const SizedBox(),
                                        const Text(
                                          "Diary",
                                          style: TextStyle(
                                              fontFamily: "Lemon Milk",
                                              fontSize: 18,
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            // AI Bot
                            InkWell(
                                onTap: (){},
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const SizedBox(),
                                        Image.asset(
                                          "assets/images/robot.png",
                                          height: 80,
                                        ),
                                        const SizedBox(),
                                        const Text(
                                          "AI Bot",
                                          style: TextStyle(
                                              fontFamily: "Lemon Milk",
                                              fontSize: 18,
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            // Profile
                            InkWell(
                                onTap: (){},
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const SizedBox(),
                                        Image.asset(
                                          "assets/images/womanProfile.png",
                                          height: 80,
                                        ),
                                        const SizedBox(),
                                        const Text(
                                          "Profile",
                                          style: TextStyle(
                                              fontFamily: "Lemon Milk",
                                              fontSize: 18,
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            // Confidence Booster
                            InkWell(
                                onTap: (){},
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const SizedBox(),
                                        Image.asset(
                                          "assets/images/love-yourself.png",
                                          height: 80,
                                        ),
                                        const SizedBox(),
                                        const Text(
                                          "Confidence",
                                          style: TextStyle(
                                              fontFamily: "Lemon Milk",
                                              fontSize: 18,
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            //About Us
                            InkWell(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const AboutUs()
                                      )
                                  );
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const SizedBox(),
                                        Image.asset(
                                          "assets/images/info.png",
                                          height: 70,
                                        ),
                                        const SizedBox(),
                                        const Text(
                                          "About Us",
                                          style: TextStyle(
                                              fontFamily: "Lemon Milk",
                                              fontSize: 18,
                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ),


                          ],
                        ),

                        const SizedBox(height: 20,),
                      ],
                    ),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}