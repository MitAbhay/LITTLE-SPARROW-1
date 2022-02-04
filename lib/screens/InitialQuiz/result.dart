import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:little_sparrow/screens/UserDetailsEntry/user_remaining_data_entry.dart';
import 'package:little_sparrow/screens/home.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  //Remark Logic
  String get resultPhrase {
    String resultText;
    if(resultScore>12 && resultScore<22){
      resultText = "Medium";
    } else if(resultScore >21) {
      resultText = "Severe";
    } else if(resultScore>2 && resultScore<13) {
      resultText = "Mild";
    } else{
      resultText = "No";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 10,),
            Text(
              resultPhrase,
              style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Bebas Neue",
                  color: Color(0xfffd6e6d)
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10,),
            const Text(
              'Pospartum Depression',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Text(
              'detected',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),//Text
            const SizedBox(height: 50,),
            // Home Button
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RemainingDataEntry())
                );
              },
              child: const FaIcon(
                  FontAwesomeIcons.arrowCircleRight,
                  size: 50,
                )

            ) //FlatButton
          ], //<Widget>[]
        ),
      ),
    ); //Center
  }
}