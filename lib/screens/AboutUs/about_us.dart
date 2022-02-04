import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Color(0xfffef0ef),
          //color set to transperent or set your own color
          statusBarIconBrightness: Brightness.light,
          //set brightness for icons, like dark background light icons
        )
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 10,),
                const Text(
                  "Our",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                const Text(
                  "Vision",
                  style: TextStyle(
                      fontFamily: "Lemon Milk",
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),
                ),
                const SizedBox(height: 5,),
                Center(
                  child: Image.asset(
                      "assets/gif/girl_16(1).gif"
                  ),
                ),
                const SizedBox(height: 10,),
                const Center(
                  child: Text(
                    "You're like a grey sky.\nYou're beautiful even though you don't want to be.",
                    textAlign: TextAlign.center ,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontFamily: "Poppins",
                        fontSize: 13
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "We live in a world where half the population is"
                              " female, and every female experiences the bliss "
                              "of motherhood at some point in their life. The "
                              "Postpartum Depression target rate is increasing "
                              "with the increasing population. Nowadays, the "
                              "global prevalence of PPD is 100-150 per 1000 "
                              "births. PPD can be very toll taking on the health"
                              " of a woman. We, at Little Sparrow, want to "
                              "create a world where women can come up and break "
                              "free of PPD. We want to live in a world where the"
                              " masses know what Postpartum Depression is, and "
                              "no one goes neglected. We want to create "
                              "awareness among the crowd so that people can help"
                              " new mothers in their struggles. The women "
                              "community is progressing but somehow new mothers "
                              "somewhere get neglected. Not being able to "
                              "express their suffering hidden under joy can be a"
                              " threat to their mental health. Little Sparrow "
                              "wants to work for this cause believing that any "
                              "type of mental health is a menace to everyone.",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,
                              color: Colors.black
                          ),
                        )
                      ]
                  ),
                ),
                const SizedBox(height: 20,),
                const Divider(
                  color: Colors.black,
                ),
                const SizedBox(height: 20,),
                const Text(
                  "Our",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                const Text(
                  "Team",
                  style: TextStyle(
                      fontFamily: "Lemon Milk",
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),
                ),
                const SizedBox(height: 20,),

                Center(
                  child: Container(
                    child: Column(
                      children: <Widget>[

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
