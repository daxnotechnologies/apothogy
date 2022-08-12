import 'package:apothogy_app/view/Navigate_To_other_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CheckoutScreen.dart';

class OrderPreviewScreenPage extends StatefulWidget {
  const OrderPreviewScreenPage({Key? key}) : super(key: key);

  @override
  _OrderPreviewScreenPageState createState() => _OrderPreviewScreenPageState();
}

class _OrderPreviewScreenPageState extends State<OrderPreviewScreenPage> {
  int value1 = 1;
  int value2 = 1;
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
                          'Order Previews',
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
                    padding: const EdgeInsets.only(top: 10, left: 20),
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
                    padding: const EdgeInsets.only(left: 20),
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
                    width: 75,
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
                    padding: const EdgeInsets.only(top: 0, left: 20),
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
                    padding: const EdgeInsets.only(left: 20),
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
                    width: 75,
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
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.002,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Shipping Fee',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$0.59',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Total Payment',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$2.98',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (ctx) => Dialog(
                        backgroundColor: Colors.transparent,
                        child: Container(
                          width: MediaQuery.of(context).size.width* 0.9,
                          height: MediaQuery.of(context).size.width* 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/background.png'),
                              fit: BoxFit.fill
                            )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0, bottom: 15),
                                child: Text('Enter Coupoun here', style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    color: Colors.white
                                ),),
                              ),
                              Center(
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.7,
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
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                                        hintText: "Coupoun Code",
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide(color: Colors.white, width: 1)),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20))),
                                  ),),
                              ),
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
                                        child: Text('Add Coupoun', style: GoogleFonts.poppins(
                                            fontSize: 16, color: Colors.white
                                        ),)),
                                  ),
                                ),
                              ),
                            ],),
                          ),
                        ),
                      )
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xffA5A5A5CF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Icon(
                                  Icons.settings,
                                  color: Color(0xffF0BC68),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Add Coupon',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xffA5A5A5CF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: (){
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
                                'Please add Your Shipping address',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  '. Your Personal data will be used only to process your order. For more \ndetails Please see Privacy Policy',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Text("Continue Shopping"),
                        //content: Text("Succsessfully"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Container(
                              color: Colors.lightBlue,
                              padding: EdgeInsets.all(14),
                              child: Text(
                                "Back to Home Screen",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: InkWell(
                    onTap: () {
                      NavigateTo(
                        context: context,
                        page: CheckoutScreenPage(),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: BoxDecoration(
                        color: Color(0xff39D5B0),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          'Proceed to Checkout',
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
