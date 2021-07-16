import 'dart:convert';

import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
  SubscriptionScreen({Key key}) : super(key: key);

  final double horizontalSpace = 16.0;
  final double verticalSpace = 16.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF7F7F7),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header part
              Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffDFE0EB),
                        radius: 24,
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 22,
                            child: CircleAvatar(
                                backgroundColor: Color(0xff146FDA),
                                radius: 19,
                                child: Text('L',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 0.2,
                                    )
                                )
                            )
                        )
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        height: 45,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(100, 196, 196, 196),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide.none
                            )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(100, 46, 58, 89),
                        color: Color(0xFF2E3A59),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.account_balance_wallet_rounded, color: Colors.white,),
                          SizedBox(width: 5,),
                          Text('Top Up', style: TextStyle(
                            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400
                          ),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // row
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 19.0, horizontal: 16.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_outlined),
                    SizedBox(width: 20,),
                    Text("Use Debit Card", style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                    ),)
                  ],
                ),
              ),
              // Remaining page
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 26),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                          child: Text('Top Up Overview', style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500
                          ),),
                        ),
                        SizedBox(height: 16,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Amonnt to Top Up", style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400
                              ),),
                              Text("N 500.00", style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff2214DA)
                              ),)
                            ],
                          ),
                        ),
                        SizedBox(height: 11.02,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("VAT", style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400
                              ),),
                              Text("N 0.00", style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff2214DA)
                              ),)
                            ],
                          ),
                        ),
                        SizedBox(height: 19,),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                          color: Color(0xffF7F7F7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total Charged", style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400
                              ),),
                              Text("N 5,000", style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff2214DA)
                              ),)
                            ],
                          ),
                        ),
                        SizedBox(height: 36,),
                        Container(
                          height: 1,
                          color: Color(0xffC4C4C4),
                        ),
                        SizedBox(height: 38,),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xff2214DA), Color(0xff0D093C), Color(0xff1104B2)],
                              begin: Alignment.topCenter, end: Alignment.bottomCenter,
                              stops: [0, 100, 100]
                            )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Credit Card', style: TextStyle(
                                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500
                              ),),
                              SizedBox(height: 23,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Card Number', style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.w400
                                  ),),
                                  SizedBox(height: 10,),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      fillColor: Colors.white, filled: true,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(Radius.circular(3))
                                      ),
                                      hintText: "Card Number",
                                      helperText: "Error: Incorrect card number! Kindly check your card and correct",
                                      helperStyle: TextStyle(color: Colors.white)
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ],
                              ),
                              SizedBox(height: 36,),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Expiry Date', style: TextStyle(
                                            color: Colors.white, fontWeight: FontWeight.w400
                                        ),),
                                        SizedBox(height: 10,),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            fillColor: Colors.white, filled: true,
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                                borderRadius: BorderRadius.all(Radius.circular(3))
                                            ),
                                            hintText: "Expiry Date",
                                            helperText: "Error: Incorrect card number! Kindly check your card and correct",
                                            helperStyle: TextStyle(color: Colors.white)
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('CVV', style: TextStyle(
                                            color: Colors.white, fontWeight: FontWeight.w400
                                        ),),
                                        SizedBox(height: 10,),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            fillColor: Colors.white, filled: true,
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.all(Radius.circular(3))
                                            ),
                                            hintText: "XXX",
                                            helperText: "Error: Incorrect card number! Kindly check your card and correct",
                                            helperStyle: TextStyle(color: Colors.white),
                                            floatingLabelBehavior: FloatingLabelBehavior.always
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 52,),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  FocusScope.of(context).unfocus();
                                },
                                child: Text('Save', style: TextStyle(
                                  color: Color(0xff291CDB)
                                ),),
                                style: ButtonStyle(
                                  side: MaterialStateProperty.resolveWith((states) => BorderSide(
                                    color: Color(0xFF291CDB)
                                  )),
                                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 24))
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  FocusScope.of(context).unfocus();
                                },
                                child: Text('Finish'),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateColor.resolveWith((states) => Color(0xff291CDB)),
                                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 24))
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
