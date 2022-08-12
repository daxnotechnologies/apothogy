
import 'dart:math';

import 'package:apothogy_app/view/HomeScreen.dart';
import 'package:apothogy_app/view/bottom_bar_view.dart';
import 'package:apothogy_app/view/loginView.dart';
import 'package:apothogy_app/view/signUpView.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screen/LoginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key, key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
    var _size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background.png'),
              ),
            ),

            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 100,),

                    Center(
                      child: SizedBox(
                          width: 300,
                          height: 100,
                          child: Image.asset("assets/images/logo.png")),
                    ),

                    SizedBox(height: 40,),
                    Center(
                      child: Text('Your Skin Journey Starts Here', style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                      ),),
                    ),
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 15),
                      child: Text('Username', style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white
                      ),),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(

                          controller: nameController,
                              validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },


                          decoration: InputDecoration(
                            filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                              hintText: "Username",

                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.white, width: 1)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),


                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 15),
                      child: Text('Email', style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white
                      ),),
                    ),
                    Center(
                      child: Container(
                        width: _size.width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
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
                              contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                              hintText: "Email",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.white, width: 1)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),

                      ),
                    ),
                    SizedBox(height: 20,),


                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 15),
                      child: Text('Phone Number', style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white
                      ),),
                    ),
                    Center(
                      child: Container(
                        width: _size.width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
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
                              contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                              hintText: "Phone Number",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.white, width: 1)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),

                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 15),
                      child: Text('Password', style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white
                      ),),
                    ),
                    Center(
                      child: Container(
                        width: _size.width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2))
                            ]),
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                              hintText: "Password",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.white, width: 1)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),),
                    ),
                    SizedBox(height: 30,),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            _signUpUser(context);
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.


                          }
                        },
                        child: Container(
                          width: _size.width * 0.8,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xff39D5B0),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Center(
                              child: Text('Sign Up', style: GoogleFonts.poppins(
                                  fontSize: 16, color: Colors.white
                              ),)),
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text('Already have an account? ', style: GoogleFonts.poppins(
                              fontSize: 16, color: Colors.white
                          ),),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => loginView(),
                                ),
                              );
                            },
                            child: Text('Sign In ', style: GoogleFonts.poppins(
                                fontSize: 16, color: Color(0xff39D5B0)
                            ),),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20,)

                  ],),
              ),
            ),
          ),
        )
    );
  }
  _signUpUser(BuildContext context) async {


    try {
      makeLoadingTrue();
      ///This will allow user to register in firebase

      return await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
          email: emailController.text.trim(), password: passwordController.text.trim())
          .whenComplete(() {
        FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).set({

          'name': nameController.text,
          'email': emailController.text,
          "phoneNumber":phoneController.text,
        });

        makeLoadingFalse();
      }).then((value) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => loginView()));
        return showDialog<void>(
          context: context,
          barrierDismissible: false,
          // false = user must tap button, true = tap outside dialog
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              titleTextStyle: GoogleFonts.poppins(color: Color(0xff39D5B0),fontSize: 20,fontWeight: FontWeight.w700),

              title: Center(child: Text('Message!')),
              content: Text("Registered successfully"),
              actions: <Widget>[
                Center(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Color(0xff39D5B0)),
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
            titleTextStyle: GoogleFonts.poppins(color: Color(0xff39D5B0),fontSize: 20,fontWeight: FontWeight.w700),

            content: Text("please enter correct email & password"),
            actions: <Widget>[
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Color(0xff39D5B0)),
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

