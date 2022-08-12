import 'package:apothogy_app/view/Navigate_To_other_Screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AddNewPhoto.dart';

class EditAccountScreenPage extends StatefulWidget {
  const EditAccountScreenPage({Key? key}) : super(key: key);

  @override
  _EditAccountScreenPageState createState() => _EditAccountScreenPageState();
}

class _EditAccountScreenPageState extends State<EditAccountScreenPage> {

  var currentUser = FirebaseAuth.instance.currentUser;
  TextEditingController _firstNameController = new TextEditingController();
  TextEditingController _lastNameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _genderController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: FutureBuilder<dynamic>(
        future: getData(),
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
                              padding: const EdgeInsets.only(left: 20),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_outlined,
                                  size: 30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Edit Account',
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/girl.png'),
                                // backgroundColor: Color(0xffF16565),
                                radius: 50,
                              ),
                              Positioned.fill(
                                left: -130,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: InkWell(
                                    onTap: () {
                                      NavigateTo(
                                          context: context,
                                          page: AddNewPhotoScreen());
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.red.shade300,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.camera_alt_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'User Information',
                            style: GoogleFonts.poppins(
                              color: Color(0xff39D5B0),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Form(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      style: TextStyle(
                                        height: 2,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                      controller: _firstNameController,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: const InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.white),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.teal),
                                          ),
                                          floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                          hintText: 'Malia',
                                          labelText: 'First Name',
                                          labelStyle: TextStyle(
                                              color: Colors.teal,
                                              fontSize: 20,
                                              fontFamily: 'Nobile'),
                                          hintStyle: TextStyle(
                                            height: 2,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18,
                                          )),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      style: TextStyle(
                                        height: 2,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                      controller: _lastNameController,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: const InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.white),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.teal),
                                          ),
                                          floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                          hintText: 'Culver',
                                          labelText: 'Last Name',
                                          labelStyle: TextStyle(
                                            color: Colors.teal,
                                            fontSize: 20,
                                            fontFamily: 'Nobile',
                                          ),
                                          hintStyle: TextStyle(
                                            height: 2,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                readOnly: true,
                                style: TextStyle(
                                  height: 2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.teal),
                                    ),
                                    floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                    hintText: 'maliaculver@gmail.com',
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 20,
                                      fontFamily: 'Nobile',
                                    ),
                                    hintStyle: TextStyle(
                                      height: 2,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 18,
                                    )),
                              ),
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      style: TextStyle(
                                        height: 2,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                      controller: _genderController,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: const InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.white),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.teal),
                                          ),
                                          floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                          hintText: 'Female',
                                          labelText: 'Gender',
                                          labelStyle: TextStyle(
                                            fontSize: 20,
                                            color: Colors.teal,
                                            fontFamily: 'Nobile',
                                          ),
                                          hintStyle: TextStyle(
                                            height: 2,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18,
                                          )),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      style: TextStyle(
                                        height: 2,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                      controller: _phoneController,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: const InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.white),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.teal),
                                          ),
                                          floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                          hintText: '310-596-0256',
                                          labelText: 'Phone',
                                          labelStyle: TextStyle(
                                              fontSize: 20,
                                              color: Colors.teal,
                                              fontFamily: 'Nobile'),
                                          hintStyle: TextStyle(
                                            height: 2,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: GestureDetector(
                                onTap: () {
                                  updateProfile();

                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.8,
                                  height: MediaQuery.of(context).size.height * 0.07,
                                  decoration: BoxDecoration(
                                    color: Color(0xff39D5B0),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Save',
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ));
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
      ),
    );
  }

  getData() async{
    var user = await FirebaseFirestore.instance.collection('users').doc(currentUser!.uid).get();
    if(user['name'].toString().contains(" ")){
      _firstNameController.text = user['name'].toString().substring(0, (user['name'].toString().indexOf(" ")));
      _lastNameController.text = user['name'].toString().substring((user['name'].toString().indexOf(" ") + 1), user['name'].toString().length);
    } else
      _firstNameController.text = user['name'];
    _emailController.text = user['email'];
    _genderController.text = user['gender'];
    _phoneController.text = user['phoneNumber'];
    return user;
  }

  updateProfile() async{
    CircularProgressIndicator();

    await FirebaseFirestore.instance.collection('users').doc(currentUser!.uid).update({
      'name' : (_firstNameController.text + " " + _lastNameController.text),
      'gender' : _genderController.text,
      'phoneNumber' : _phoneController.text
    }).then((value) {
      setState(() {

      });
      FocusScope.of(context).unfocus();
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          titleTextStyle: GoogleFonts.poppins(color: Color(0xff39D5B0),fontSize: 20,fontWeight: FontWeight.w700),

          title: Center(child: Text('Message!')),
          content: Text("Profile Updated Successfully"),
          actions: <Widget>[
            Center(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Color(0xff39D5B0)),
                child: Text('Okay',style: TextStyle(color: Colors.white),),
                onPressed: () {
                  Navigator.pop(context);// Dismiss alert dialog
                },
              ),
            ),
          ],
        );
      });

    });
  }
}
