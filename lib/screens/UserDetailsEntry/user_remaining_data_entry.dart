import 'package:flutter/material.dart';
import 'package:little_sparrow/screens/home.dart';

class RemainingDataEntry extends StatefulWidget {
  const RemainingDataEntry({Key? key}) : super(key: key);

  @override
  _RemainingDataEntryState createState() => _RemainingDataEntryState();
}

class _RemainingDataEntryState extends State<RemainingDataEntry> {

  final _userCountryController = TextEditingController();
  final _userStateController = TextEditingController();
  final _userPinCodeController = TextEditingController();
  final _userJobController = TextEditingController();
  bool _userSingleMother = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        // bottomRight: Radius.circular(60)
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          // spreadRadius: 5,
                          blurRadius: 7,
                           // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    "assets/gif/girl_15.gif",
                    height: 200,
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),

                  // Country
                  Container(
                    height: 60,
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      controller: _userCountryController,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        // fontWeight: FontWeight.bold
                      ),
                      onTap: (){

                      },
                      decoration: InputDecoration(
                          labelText: "Country",
                          labelStyle: const TextStyle(
                            fontFamily: "Bebas Neue",
                            color: Colors.black
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 5
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.yellow,
                                  width: 5
                              )
                          )
                      ),
                    ),
                  ),

                  // State
                  Container(
                    height: 60,
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      controller: _userStateController,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        // fontWeight: FontWeight.bold
                      ),
                      onTap: (){

                      },
                      decoration: InputDecoration(
                          labelText: "State",
                          labelStyle: const TextStyle(
                              fontFamily: "Bebas Neue",
                              color: Colors.black
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 5
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.yellow,
                                  width: 5
                              )
                          )
                      ),
                    ),
                  ),

                  //PinCode
                  Container(
                    height: 60,
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      controller: _userPinCodeController,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        // fontWeight: FontWeight.bold
                      ),
                      onTap: (){

                      },
                      decoration: InputDecoration(
                          labelText: "PINCODE",
                          labelStyle: const TextStyle(
                              fontFamily: "Bebas Neue",
                              color: Colors.black
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 5
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.yellow,
                                  width: 5
                              )
                          )
                      ),
                    ),
                  ),

                  // Single Mother
                  Container(
                    height: 60,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Colors.white,
                            width: 5
                        )
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Text(
                                  "Single Mother",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Bebas Neue",
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Switch(
                                  value: _userSingleMother,
                                  onChanged: (value){
                                    setState(() {
                                      _userSingleMother = value;
                                    });
                                  },
                                  activeColor: Colors.white,
                              )
                            ]
                        ),
                      ],

                    ),
                  ),

                  //Job
                  Container(
                    height: 60,
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      controller: _userPinCodeController,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        // fontWeight: FontWeight.bold
                      ),
                      decoration: InputDecoration(
                          labelText: "Job",
                          labelStyle: const TextStyle(
                              fontFamily: "Bebas Neue",
                              color: Colors.black
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 5
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.yellow,
                                  width: 5
                              )
                          )
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //Proceed Button
                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()
                            )
                        );
                      },
                      child: const Text(
                        "Proceed",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Bebas Neue",
                            fontSize: 18,
                            letterSpacing: 1
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      )
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
