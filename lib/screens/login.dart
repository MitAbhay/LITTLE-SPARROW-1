import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:little_sparrow/screens/home.dart';
// import 'package:tele_doc/widget/otp_verify.dart';

// For switching between login and otp verify screen
enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class MobileAuth extends StatefulWidget {
  const MobileAuth({Key? key}) : super(key: key);

  @override
  State<MobileAuth> createState() => _MobileAuthState();
}

class _MobileAuthState extends State<MobileAuth> {
  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  final _otpController = TextEditingController();
  final _mobileController = TextEditingController();

  String verificationId = "";

  // For activating loading screen
  bool showLoading = false;

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });

    try {
      final authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);

      setState(() {
        showLoading = false;
      });

      if (authCredential.user != null) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomePage()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });

      _scaffoldkey.currentState!
          .showSnackBar(SnackBar(content: Text(e.message.toString())));
    }
  }

  //Login screen
  getMobileFormWidget(context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 49,
          ),
    
          //App Logo
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              height: 174,
              width: 202,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(32),
            child: Column(
              children: <Widget>[
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Enter your Mobile Number",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
    
                // For taking mobile number from the user
                Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey.shade200,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    controller: _mobileController,
                  ),
                ),
    
                const SizedBox(
                  height: 10,
                ),
    
                // OTP button
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () async {
                        setState(() {
                          showLoading = true;
                        });
    
                        await _auth.verifyPhoneNumber(
                            phoneNumber: _mobileController.text,
                            verificationCompleted: (phoneAuthCredential) async {
                              setState(() {
                                showLoading = false;
                              }); //signInWithPhoneAuthCredential(phoneAuthCredential);
                            },
                            verificationFailed: (verificationFailed) async {
                              setState(() {
                                showLoading = false;
                              });
                              _scaffoldkey.currentState?.showSnackBar(SnackBar(
                                  content: Text(
                                      verificationFailed.message.toString())));
                            },
                            codeSent: (verificationId, resendingToken) async {
                              setState(() {
                                showLoading = false;
                                currentState =
                                    MobileVerificationState.SHOW_OTP_FORM_STATE;
                                this.verificationId = verificationId;
                              });
    
                            },
                            codeAutoRetrievalTimeout: (verificationId) async {});
                      },
                      child: Container(
                          height: 41,
                          width: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.blue.shade600),
                          child: const Center(
                            child: Text(
                              "OTP",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 14),
                            ),
                          ))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  getOtpFormWidget(context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 49,
          ),
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              height: 174,
              width: 202,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(32),
            child: Column(
              children: <Widget>[
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "OTP",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey.shade200,
                  ),
                  child: TextFormField(
                    controller: _otpController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter OTP"
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () async{
                        PhoneAuthCredential phoneAuthCredential =
                        PhoneAuthProvider.credential(
                            verificationId: verificationId, smsCode: _otpController.text);
    
                        signInWithPhoneAuthCredential(phoneAuthCredential);
                      },
                      child: Container(
                          height: 41,
                          width: 61,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.blue.shade600),
                          child: const Center(
                            child: Text(
                              "Verify",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 14),
                            ),
                          ))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          key: _scaffoldkey,
          body: Container(
            child: showLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
                    ? getMobileFormWidget(context)
                    : getOtpFormWidget(context),
            padding: const EdgeInsets.all(16),
          )),
    );
  }
}
