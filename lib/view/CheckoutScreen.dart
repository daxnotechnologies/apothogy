import 'package:apothogy_app/view/Navigate_To_other_Screen.dart';
import 'package:apothogy_app/view/bottom_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomeScreen.dart';

class CheckoutScreenPage extends StatefulWidget {
  const CheckoutScreenPage({Key? key}) : super(key: key);

  @override
  _CheckoutScreenPageState createState() => _CheckoutScreenPageState();
}

class _CheckoutScreenPageState extends State<CheckoutScreenPage> {
  int value1 = 1;
  int value2 = 1;
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background.png'),
            ),
          ),
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
                          'Checkout',
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 25),
                    child: Column(
                      children: [
                        Image(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.17,
                          image: AssetImage('assets/images/CenterImage.png'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Apoth.o.gy',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '1 kg',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$1',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.12,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              value1++;
                            });
                          },
                          child: Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.11,
                            decoration: BoxDecoration(
                              color: Color(0xffBFBFBF),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Center(
                                child: Text(
                              '$value1',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              value1--;
                            });
                          },
                          child: Icon(
                            Icons.minimize,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 25),
                    child: Column(
                      children: [
                        Image(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.17,
                          image: AssetImage('assets/images/CenterImage.png'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Apoth.o.gy',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '1 kg',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$1.49',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.12,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              value2++;
                            });
                          },
                          child: Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.11,
                            decoration: BoxDecoration(
                              color: Color(0xffBFBFBF),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Center(
                                child: Text(
                              '$value2',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              value2--;
                            });
                          },
                          child: Icon(
                            Icons.minimize,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xff39D5B0),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Center(
                            child: Text('Update', style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.black
                            ),)),
                      ),
                    ),
                  ],),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: Row(
                  children: [
                    Text(
                      'PAYMENT DETAILS',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color(0xff39D5B0),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Cart Total',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 190),
                      child: Text(
                        '\$774',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Discount',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 190),
                      child: Text(
                        '-\$100.0',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xffF38BA0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '<COUPON> applied',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Color(0xffF38BA0),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Shipping Charges',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Text(
                        '\$50',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Includes long distance fee of for 16km',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xffA1A1A1),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '-------------------',
                      style: GoogleFonts.poppins(
                        letterSpacing: 7.0,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      'You\'re saving ₹266 on this order',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    //Check
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                              ),
                              child: Checkbox(
                                activeColor: Color(0xff39D5B0),
                                checkColor: Colors.black,
                                hoverColor: Color(0xff39D5B0),
                                value: this.value,
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                },
                              ),
                            ),
                            Text(
                              'Repeat Buyer? Save you information',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Delivering to',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xffA1A1A1),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Home',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xffA1A1A1),
                      size: 20,
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(context: context,
                            builder: (context){
                              return FractionallySizedBox(
                                heightFactor: 2,
                                widthFactor: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/background.png'),
                                          fit: BoxFit.fill
                                      ),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10) )

                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 40 ,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: Text('Enter your Delivery Address', style: GoogleFonts.poppins(
                                            fontSize: 18, color: Colors.white
                                        ),),
                                      ),
                                      SizedBox(height: 20 ,),
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width * 0.8,
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
                                                contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                                                hintText: "Name",
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30),
                                                    borderSide: BorderSide(color: Colors.white, width: 1)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30))),
                                          ),),
                                      ),
                                      SizedBox(height: 20 ,),
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width * 0.8,
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
                                                contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                                                hintText: "Contact Number",
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30),
                                                    borderSide: BorderSide(color: Colors.white, width: 1)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30))),
                                          ),),
                                      ),
                                      SizedBox(height: 20 ,),
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width * 0.8,
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
                                                contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                                                hintText: "Address Line 1",
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30),
                                                    borderSide: BorderSide(color: Colors.white, width: 1)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30))),
                                          ),),
                                      ),
                                      SizedBox(height: 20 ,),
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width * 0.8,
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
                                                contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                                                hintText: "Address Line 2",
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30),
                                                    borderSide: BorderSide(color: Colors.white, width: 1)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30))),
                                          ),),
                                      ),
                                      SizedBox(height: 20 ,),
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width * 0.8,
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
                                                contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                                                hintText: "City",
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30),
                                                    borderSide: BorderSide(color: Colors.white, width: 1)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30))),
                                          ),),
                                      ),
                                      SizedBox(height: 20 ,),
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width * 0.8,
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
                                                contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                                                hintText: "State",
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30),
                                                    borderSide: BorderSide(color: Colors.white, width: 1)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30))),
                                          ),),
                                      ),
                                      SizedBox(height: 20 ,),
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width * 0.8,
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
                                                contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                                                hintText: "Zip Code",
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30),
                                                    borderSide: BorderSide(color: Colors.white, width: 1)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(30))),
                                          ),),
                                      ),

                                      SizedBox(height: 20,),

                                      Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width * 0.5,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: Color(0xff39D5B0),
                                                borderRadius: BorderRadius.all(Radius.circular(20))
                                            ),
                                            child: Center(
                                                child: Text('Confirm Address', style: GoogleFonts.poppins(
                                                    fontSize: 16, color: Colors.white
                                                ),)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20,),

                                    ],),
                                ),
                              );
                            });
                      },
                      child: Text(
                        'Change',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff39D5B0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Text("Order Placed"),
                        //content: Text("Succsessfully"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: InkWell(
                              onTap: () {
                                NavigateTo(
                                  context: context,
                                  page: bottom_bar_view(currentIndex: 0,),
                                );
                              },
                              child: Container(
                                color: Color(0xff39D5B0),
                                padding: EdgeInsets.all(14),
                                child: Text(
                                  "Continue Shopping",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.09,
                    decoration: BoxDecoration(
                      color: Color(0xff39D5B0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Place Order',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*


 */
