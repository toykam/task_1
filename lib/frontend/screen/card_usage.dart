

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_1/frontend/screen/subscription_screen.dart';
import 'package:task_1/frontend/widgets/credit_card.dart';
import 'package:task_1/frontend/widgets/horizontal_line.dart';

class CardUsage extends StatefulWidget {
  const CardUsage({Key key}) : super(key: key);

  @override
  _CardUsageState createState() => _CardUsageState();
}

class _CardUsageState extends State<CardUsage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Container(
          child: Column(
            children: [
              // Header
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back, color: Color(0xff2E3A59),),
                    SizedBox(width: 20,),
                    Text('Card Usage', style: TextStyle(
                      color: Color(0xff2E3A59), fontWeight: FontWeight.w500
                    ),)
                  ],
                ),
              ),
              Container(
                height: 1, color: Color(0xffC4C4C4),
              ),

              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: Text('Your debit card usage summary appears here', textAlign: TextAlign.center,)),
                    SizedBox(height: 22,),
                    HorizontalLine(),
                    SizedBox(height: 12,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Filter'),
                          SizedBox(width: 10,),
                          Icon(Icons.keyboard_arrow_up, color: Color(0xff2E3A59),)
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('From:'),
                                  SizedBox(width: 5,),
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8F0FE),
                                      borderRadius: BorderRadius.all(Radius.circular(6))
                                    ),
                                    child: Row(
                                      children: [
                                        Text('28 Nov 2020', style: TextStyle(color: Color(0xff2E3A59)),),
                                        SizedBox(width: 5,),
                                        Icon(Icons.calendar_today_outlined)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('To:'),
                                  SizedBox(width: 5,),
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                    decoration: BoxDecoration(
                                        color: Color(0xffC4C4C4),
                                        borderRadius: BorderRadius.all(Radius.circular(6))
                                    ),
                                    child: Row(
                                      children: [
                                        Text('28 Nov 2020'),
                                        SizedBox(width: 5,),
                                        Icon(Icons.calendar_today_outlined)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Radio(value: false, groupValue: 0, onChanged: (val) {}),
                                Text('All Time')
                              ],
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xffBEE1FF)),
                              textStyle: MaterialStateProperty.resolveWith((states) => TextStyle(
                                color: Color(0xff2214DA)
                              ))
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SubscriptionScreen()));
                            }, child: Text('Apply')
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 5,),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Stack(
                    children: [

                      Positioned(
                        top: 160, left: 0, right: 0,
                        child: Transform(
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.001)
                            ..rotateX(-50/180*pi),
                          alignment: Alignment.center,
                          child: CreditCard(),
                        ),
                      ),
                      Positioned(
                        top: 80, left: 0, right: 0,
                        child: Transform(
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.001)
                            ..rotateX(-50/180*pi),
                          alignment: Alignment.center,
                          child: CreditCard(),
                        ),
                      ),
                      Positioned(
                        child: Transform(
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.001)
                            ..rotateX(-50/180*pi),
                          alignment: Alignment.center,
                          child: CreditCard(),
                        ),
                      ),

                    ],
                  )
                ),
              )
            ]

          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(
            color: Color(0xffBEE1FF)
          ),
          unselectedIconTheme: IconThemeData(
            color: Color(0xffBEE1FF)
          ),
          backgroundColor: Color(0xff2214DA),
          unselectedItemColor: Color(0xffBEE1FF),
          selectedItemColor: Color(0xffBEE1FF),
          items: [
            BottomNavigationBarItem(
              label: "Overview",
              icon: Icon(Icons.dashboard),
            ),
            BottomNavigationBarItem(
              label: "Customers",
              icon: Icon(Icons.people),
            ),
            BottomNavigationBarItem(
              label: "Campaign",
              icon: Icon(Icons.comment),
            ),
            BottomNavigationBarItem(
              label: "Subscription",
              icon: Icon(Icons.subscriptions),
            ),
            BottomNavigationBarItem(
              label: "Report",
              icon: Icon(Icons.insert_chart_outlined_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
