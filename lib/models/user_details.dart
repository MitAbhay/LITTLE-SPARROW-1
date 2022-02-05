// import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserDetail {
  String? name; //done
  String? username;
  String? userMobile; //done
  String? userCountry; //done
  String? userState; //done
  String? userPinCode; //done
  String? userJob; //done
  DateTime? userDateOfBirth; //done
  DateTime? userDeliveryDate; //done
  bool? userSingleMother; //done
  bool? userCurrentlyPregnant; //done
  bool? userDetailsFilled; //done
  bool userInitialTestTaken = false; //done
  int? userChildNo; //done
  int? userAge;
  int? userInitialScore; //done
  List<String>? userPreferredContacts;

  UserDetail.mobileNumber(this.userMobile){
    print(userMobile);
  }

  UserDetail.basicEntry(
      this.name,
      this.userDateOfBirth,
      this.userCurrentlyPregnant,
      this.userDeliveryDate,
      this.userChildNo
  ){
    print(name);
    print(userDateOfBirth);
    print(userCurrentlyPregnant);
    print(userDeliveryDate);
    print(userChildNo);
    userAge = calculateAge(userDateOfBirth);
    print(userAge);
  }

  calculateAge(DateTime? birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate!.year;
    int month1 = currentDate.month;
    int month2 = birthDate!.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate!.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }

  UserDetail.initialTestTaken(
      this.userInitialTestTaken,
      this.userInitialScore
  );

  UserDetail.remainingEntry(
      this.userCountry,
      this.userState,
      this.userPinCode,
      this.userSingleMother,
      this.userJob,
      this.userDetailsFilled
  );

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  CollectionReference userDetails = FirebaseFirestore.instance.collection('userDetails');

  Future<void> addUser(){
    return userDetails
        .add(
      {
        'name': name,

      }
    );
  }

}
