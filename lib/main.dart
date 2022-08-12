
import 'package:apothogy_app/view/bottom_bar_view.dart';
import 'package:apothogy_app/view/loginView.dart';
import 'package:apothogy_app/view/signUpView.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'constants/authStateHandler.dart';
import 'view/AddNewPhoto.dart';
import 'view/CheckoutScreen.dart';
import 'view/DetailScreen.dart';
import 'view/EditAccountScreen.dart';
import 'view/HomeScreen.dart';
import 'view/OrderPreviewScreen.dart';
import 'view/ProfileScreen.dart';
import 'view/SelectFilterScreen.dart';
import 'view/Slideshow.dart';
import 'view/UploadScreen.dart';
import 'view/WelcomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedIn = false;

  @override
  void initState() {
    // TODO: implement initState
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() {
    UserLoginStateHandler.getUserLoggedInSharedPreference().then((value) {
      if(value==null){
        isLoggedIn = false;
      }else{
        isLoggedIn = value;
      }

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLoggedIn?bottom_bar_view(currentIndex: 0,):WelcomeScreenPage(),
    );
  }
}
