import 'package:apothogy_app/view/Navigate_To_other_Screen.dart';
import 'package:apothogy_app/view/WelcomeScreen.dart';
import 'package:apothogy_app/view/loginView.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'EditAccountScreen.dart';
import 'bottom_bar_view.dart';

class ProfileScreenPage extends StatefulWidget {
  const ProfileScreenPage({Key? key}) : super(key: key);

  @override
  _ProfileScreenPageState createState() => _ProfileScreenPageState();
}

class _ProfileScreenPageState extends State<ProfileScreenPage> {
  
  var currentUser = FirebaseAuth.instance.currentUser;
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: getProfile(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background.png'),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xff39D5B0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: Text(
                              'Profile',
                              style: GoogleFonts.poppins(
                                fontSize: 23,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff423838),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 42, left: 34),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/girl.png'),
                          backgroundColor: Color(0xffF16565),
                          radius: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Material(
                                color: Colors.transparent,
                                child: Text(
                                  snapshot.data['name'],
                                  style: GoogleFonts.poppins(
                                    color: Color(0xff39D5B0),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 26,
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: Text(
                                  snapshot.data['email'],
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: GestureDetector(
                      onTap: () {
                        NavigateTo(context: context, page: EditAccountScreenPage());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.07,
                        color: Color(0xff39D5B0),
                        child: Center(
                          child: Text(
                            'Edit Account',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 20, right: 35),
                        child: GestureDetector(
                          onTap: () {
                            NavigateTo(
                              context: context,
                              page: bottom_bar_view(currentIndex: 2,),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Color(0xff39D5B0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'My Slide Show',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff8F8F8F),
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.002,
                          decoration: BoxDecoration(
                            color: Color(0xffE9E9E9),
                            border: Border.all(
                              width: 2,
                              color: Color(0xffE9E9E9),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20, right: 35),
                        child: GestureDetector(
                          onTap: () {
                            NavigateTo(
                              context: context,
                              page: bottom_bar_view(currentIndex: 1,),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.call_to_action_outlined,
                                      color: Color(0xff39D5B0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Apply Face Wash',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff8F8F8F),
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.002,
                          decoration: BoxDecoration(
                            color: Color(0xffE9E9E9),
                            border: Border.all(
                              width: 2,
                              color: Color(0xffE9E9E9),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20),
                        child: GestureDetector(
                          onTap: () {
                            _signOut(context);
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.power_settings_new_sharp,
                                  color: Color(0xff39D5B0),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Logout',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.002,
                          decoration: BoxDecoration(
                            color: Color(0xffE9E9E9),
                            border: Border.all(
                              width: 2,
                              color: Color(0xffE9E9E9),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        } else{
          return Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
              image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background.png'),
              ),
            ),
            child: Center(child: CircularProgressIndicator( color: Color(0xff39D5B0),)),
          );
        }
      }
    );
  }
  
  getProfile() async{
    var user = await FirebaseFirestore.instance.collection('users').doc(currentUser!.uid).get();
    return user;
  }
  
  void _signOut(context) {
    FirebaseAuth.instance.signOut();
    //print('$user');
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginView()));
  }

}
