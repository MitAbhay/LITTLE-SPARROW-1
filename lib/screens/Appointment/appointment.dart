import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {

  final ListofReleivers = {
    "WorldWide" : [
      {
        "name": "Postpartum Support International",
        "country": "",
        "contactNo": "18009444773",
        "type": "NGO"
      }
    ],
    "Australia": [
      {
        "name": "Beyond Blue Support Service",
        "state": "Victoria",
        "contactNo": "1300224636",
        "type": "NGO"
      },
      {
      "name": "Michael",
      "country": "Queensland",
      "contactNo": "1217667671",
      "type": "Psychiatrist"
      }
    ],
    "New Zealand": [
      {
        "name": "PND",
        "state": "Northland",
        "contactNo": "412-401-6001",
        "type": "NGO"
      },
      {
        "name": "Mothers Matter",
        "country": "Auckland",
        "contactNo": "512-213-1122",
        "type": "NGO"
      }
    ],
    "United States of America": [
      {
        "name": "Postpartum Support Virginia",
        "country": "Virginia",
        "contactNo": "(703) 829-7152",
        "type": "NGO"
      },
      {
        "name": "Perinatal Support Washington",
        "country": "Washington",
        "contactNo": "1-888-404-7763",
        "type": "NGO"
      }
    ]
  };

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          //color set to transperent or set your own color
          statusBarIconBrightness: Brightness.dark,
          //set brightness for icons, like dark background light icons
        )
    );

    return Scaffold(
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}
