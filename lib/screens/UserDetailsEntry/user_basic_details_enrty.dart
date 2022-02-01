import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BasicDataEntry extends StatefulWidget {
  const BasicDataEntry({Key? key}) : super(key: key);

  @override
  State<BasicDataEntry> createState() => _BasicDataEntryState();
}

class _BasicDataEntryState extends State<BasicDataEntry> {
  final _userNameController = TextEditingController();
  final _userChildNoController = TextEditingController();

  DateTime currentDate = DateTime.now();
  DateTime? _userBirthDate ;

  double animatedContainerHeight = 60;

  bool _userCurrentlyPregnant = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2022)
    );
    if (picked != null && picked != _userBirthDate) {
      setState(() {
        _userBirthDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Image.asset(
          "assets/gif/girl_3.gif",
          height: 150,
        ),
        backgroundColor: const Color(0xffffed87),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Before we start...",
                    style: TextStyle(
                        fontFamily: "Bebas Neue",
                        fontSize: 35
                    ),
                  ),
                ),
                Column(
                      children: <Widget>[
                        //Name
                        Container(
                          height: 60,
                          margin: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextFormField(
                            controller: _userNameController,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                // fontWeight: FontWeight.bold
                            ),

                            decoration: InputDecoration(
                                labelText: "Name",
                                labelStyle: const TextStyle(
                                  fontFamily: "Bebas Neue",
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 5
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        color: Colors.white,
                                        width: 5
                                    )
                                )
                            ),
                          ),
                        ),

                        //DOB
                        Container(
                          height: 60,
                          margin: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextFormField(
                              onTap: (){
                                _selectDate(context);
                                print('ye chutiyap h sb');
                              },
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20
                              ),
                              readOnly: true,

                              decoration: InputDecoration(
                                  suffixIcon: const Padding(
                                    child: FaIcon(
                                      FontAwesomeIcons.calendar,
                                      size: 25,
                                    ),
                                    padding: EdgeInsets.fromLTRB(0,8.5,0,0),
                                  ),
                                  iconColor: Colors.black,

                                  labelText: "Date of Birth",
                                  labelStyle: const TextStyle(
                                    fontFamily: "Bebas Neue",
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 5
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 5
                                      )
                                  )
                              ),
                            ),
                          ),


                        //Child Delivered
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 150),
                          height: animatedContainerHeight,
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
                                children: <Widget>[
                                  const Text(
                                    "Currently Pregnant?",
                                    style: TextStyle(
                                      fontFamily: "Bebas Neue"
                                    ),
                                  ),
                                  Switch(
                                      value: _userCurrentlyPregnant,
                                      onChanged: (value){
                                        setState(() {
                                          animatedContainerHeight == 60 ?
                                              animatedContainerHeight = 120:
                                              animatedContainerHeight = 60;
                                          _userCurrentlyPregnant = value;
                                        });
                                      }
                                  )
                                ]
                              )
                            ],
                          ),


                        ),

                        //Child Number
                        Container(
                          height: 60,
                          margin: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextFormField(
                            controller: _userChildNoController,
                            style: const TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,

                            decoration: InputDecoration(
                                labelText: "Child Number",
                                labelStyle: const TextStyle(
                                  fontFamily: "Bebas Neue",
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 5
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        color: Colors.white,
                                        width: 5
                                    )
                                )
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        ElevatedButton(
                            onPressed: (){},
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
                    )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
