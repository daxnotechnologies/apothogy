import 'package:apothogy_app/constants/authStateHandler.dart';
import 'package:apothogy_app/view/AddNewPhoto.dart';
import 'package:apothogy_app/view/Slideshow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailScreen.dart';
import 'HomeScreen.dart';
import 'Navigate_To_other_Screen.dart';
import 'ProfileScreen.dart';
import 'UploadScreen.dart';

class bottom_bar_view extends StatefulWidget {
  bottom_bar_view({Key,key, required this.currentIndex}) : super(key: key);

  var currentIndex=0;

  @override
  State<bottom_bar_view> createState() => bottom_bar_viewState();
}

class bottom_bar_viewState extends State<bottom_bar_view> {

  List pages=[
    HomeScreenPage(),
    AddNewPhotoScreen(),
    SlideShow(),
    ProfileScreenPage(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    changeLoginStatus();
    super.initState();
  }

  changeLoginStatus(){
    UserLoginStateHandler.saveUserLoggedInSharedPreference(true);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: widget.currentIndex == 1 ? InkWell(
        onTap: () {
          NavigateTo(context: context, page: UploadScreenPage());
        },
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xff39D5B0),
          child: Text(
            '+',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ) : null,
      bottomNavigationBar : BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: widget.currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xff39D5B0),
        onTap: (index){
          setState(() {
            widget.currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home_filled,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.home_filled,
              size: 26,
              color: Color(0xff39D5B0)
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.filter_center_focus_outlined,
              color: Colors.grey,
            ),
            activeIcon: Icon(
                Icons.filter_center_focus_outlined,
                size: 26,
                color: Color(0xff39D5B0)
            ),
            label: 'Try Filter',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.slideshow_rounded,
              color: Colors.grey,
            ),
            activeIcon: Icon(
                Icons.slideshow_rounded,
                size: 26,
                color: Color(0xff39D5B0)
            ),
            label: 'My Slideshow',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            activeIcon: Icon(
                Icons.person,
                size: 26,
                color: Color(0xff39D5B0)
            ),
            label: 'Profile',
          ),
        ],
      ),
      body:pages.elementAt(widget.currentIndex),
    );
  }
}
