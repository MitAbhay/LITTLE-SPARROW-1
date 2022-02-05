// import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:little_sparrow/screens/UserDetailsEntry/user_basic_details_enrty.dart';

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

}
