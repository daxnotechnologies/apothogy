import 'package:apothogy_app/view/Navigate_To_other_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CheckoutScreen.dart';

class SlideShow extends StatefulWidget {
  const SlideShow({Key? key}) : super(key: key);

  @override
  _SlideShowState createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {
  
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        'Slideshow',
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
              padding: const EdgeInsets.fromLTRB(10, 30, 0, 5),
              child: Text('January', style: GoogleFonts.poppins(
                fontSize: 23,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder:
                      (BuildContext context, int index) {
                    return Container(
                          width: 120,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:  Container(
                                padding: EdgeInsets.fromLTRB(
                                    20, 10, 20, 10),
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 1), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(image: AssetImage('assets/images/GirlRectangleImage.png')),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                              ),
                            ),
                            Text('20-1-2022', style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          ),)
                          ],
                        ),
                      );
                  })
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 5),
              child: Text('February', style: GoogleFonts.poppins(
                fontSize: 23,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),),
            ),
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder:
                        (BuildContext context, int index) {
                      return Container(
                          width: 120,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:  Container(
                                padding: EdgeInsets.fromLTRB(
                                    20, 10, 20, 10),
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 1), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(image: AssetImage('assets/images/GirlRectangleImage.png')),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                              ),
                            ),
                            Text('20-2-2022', style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          ),)
                          ],
                        ),
                      );
                    })
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 5),
              child: Text('March', style: GoogleFonts.poppins(
                fontSize: 23,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),),
            ),
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder:
                        (BuildContext context, int index) {
                      return Container(
                          width: 120,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:  Container(
                                padding: EdgeInsets.fromLTRB(
                                    20, 10, 20, 10),
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 1), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(image: AssetImage('assets/images/GirlRectangleImage.png')),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                              ),
                            ),
                            Text('20-3-2022', style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          ),)
                          ],
                        ),
                      );
                    })
            ),


          ],
        ),
      ),
    );
  }
}

