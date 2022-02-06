import 'dart:async';
import 'package:intl/intl.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


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
  List<List<Object>>? userDiary;

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
    print('name : $name');
    print('dob: $userDateOfBirth');
    print(userCurrentlyPregnant);
    print(userDeliveryDate);
    print(userChildNo);
    userAge = calculateAge(userDateOfBirth!);
    print("age: $userAge");
  }

  calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
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
  ){
    addUser();
  }


  Future<DocumentReference> addUser(){
    return FirebaseFirestore.instance
        .collection('userDetails')
        .add(<String, dynamic>{
            'name': name,
            'country': userCountry,
            'mobile': userMobile,
            'state': userState,
            'pincode': userPinCode,
            'job': userJob,
            'dob': DateFormat('dd-mm-yyyy').format(userDateOfBirth!),
            'delivery date': DateFormat('dd-mm-yyyy').format(userDeliveryDate!),
            'single mother': userSingleMother,
            'currently pregnant': userCurrentlyPregnant,
            'details filled': userDetailsFilled,
            'initial test taken': userInitialTestTaken ,
            'child no': userChildNo,
            'age': userAge,
            'initial test score': userInitialScore,
    });
  }

}
