import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:little_sparrow/screens/LogIn/login.dart';
// import 'package:little_sparrow/models/user_details.dart';
// import 'package:little_sparrow/screens/InitialQuiz/initial_questioning.dart';
// import 'package:little_sparrow/screens/LogIn/login.dart';
import 'package:little_sparrow/screens/UserDetailsEntry/user_basic_details_enrty.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MobileAuth(),
    );
  }
}