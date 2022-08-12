import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomButtonScreen.dart';
import 'LoginScreen.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  bool isLoading = false;

  makeLoadingTrue() {
    isLoading = true;
    setState(() {});
  }

  makeLoadingFalse() {
    isLoading = false;
    setState(() {});
  }

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/p1.jpg"),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          width: w,
          height: h * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/p2.png"),
            fit: BoxFit.fill,
          )),
        ),
        Container(
          margin: EdgeInsets.only(left: 50, right: 20, top: 180),
          child: Column(children: [
            Text(
              "Your Skin Journey Start Here!",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 210),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 7,
                    offset: Offset(1, 1),
                    color: Colors.grey.withOpacity(0.2))
              ]),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
                hintText: "Username",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 270),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 7,
                    offset: Offset(1, 1),
                    color: Colors.grey.withOpacity(0.2))
              ]),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
                hintText: "Email",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 330),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 7,
                    offset: Offset(1, 1),
                    color: Colors.grey.withOpacity(0.2))
              ]),
          child: TextField(
controller: phoneController,
            decoration: InputDecoration(
                hintText: "Number",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 390),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 7,
                    offset: Offset(1, 1),
                    color: Colors.grey.withOpacity(0.2))
              ]),
          child: TextField(
            controller: phoneController,
            decoration: InputDecoration(
                hintText: "Password",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 450),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 7,
                    offset: Offset(1, 1),
                    color: Colors.grey.withOpacity(0.2))
              ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Confirm Password",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 520),
          child: Column(children: [
            customButton(
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              title: "Sign Up",
              btcolor: Color(0xff39D5B0),
            ),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 580),
          child: Column(children: [
            customButton(
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signup(),
                  ),
                );
              },
              title: "Sign in with Google",
              txtcolor: Colors.black,
              btcolor: Colors.white,
            ),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 630),
          child: Column(children: [
            customButton(
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signup(),
                  ),
                );
              },
              title: "Sign in with Facebook",
              txtcolor: Colors.black,
              btcolor: Colors.white,
            ),
          ]),
        ),
        Container(
            margin: EdgeInsets.only(left: 260, top: 680),
            child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue.withOpacity(0.04);
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed))
                        return Colors.blue.withOpacity(0.12);
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {
                  _signUpUser(context);
                },
                child: Text('Sign In'))),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 40, top: 690),
                child: Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
  _signUpUser(BuildContext context) async {

      try {
        ///This will allow user to register in firebase

        return await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
            email: emailController.text.trim(), password: passwordController.text.trim())
            .whenComplete(() {
          FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).set({
            'name': nameController.text,
            'email': emailController.text,
            "phoneNumber":phoneController.text,
            'gender' : 'Female'
          });

          makeLoadingFalse();
        }).then((value) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
          return showDialog<void>(
            context: context,
            barrierDismissible: false,
            // false = user must tap button, true = tap outside dialog
            builder: (BuildContext dialogContext) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                titleTextStyle: GoogleFonts.poppins(color: Color(0xff0B3B8F),fontSize: 20,fontWeight: FontWeight.w700),

                title: Center(child: Text('Message!')),
                content: Text("Registered successfully"),
                actions: <Widget>[
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(backgroundColor: Color(0xff0B3B8F)),
                      child: Text('Okay',style: TextStyle(color: Colors.white),),
                      onPressed: () {
                        Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                      },
                    ),
                  ),
                ],
              );
            },
          );
        });
      } on FirebaseAuthException catch (e) {
        makeLoadingFalse();
        return showDialog<void>(
          context: context,
          barrierDismissible: false,
          // false = user must tap button, true = tap outside dialog
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Center(child: Text('ALert!')),
              titleTextStyle: GoogleFonts.poppins(color: Color(0xff0B3B8F),fontSize: 20,fontWeight: FontWeight.w700),

              content: Text("please enter same password"),
              actions: <Widget>[
                Center(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Color(0xff0B3B8F)),
                    child: Text('Okay',style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                    },
                  ),
                ),
              ],
            );
          },
        );
      }
    }
  }

  String? validateEmail(String? value) {
    String pattern =

        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
    ;
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return 'Enter a valid email address';
    else
      return null;
  }

