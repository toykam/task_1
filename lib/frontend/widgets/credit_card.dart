import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  CreditCard({Key key}) : super(key: key);
  TextStyle cardTextStyle = TextStyle(
    color: Colors.white, fontSize: 16
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff2214DA), Color(0xff19145E), Color(0xffAAAAAA)],
          begin: Alignment.topCenter, end: Alignment.bottomCenter,
          stops: [0, 100, 100]
        ),
        borderRadius: BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(0.1),
            offset: Offset(0, 10), blurRadius: 10, spreadRadius: 0
          )
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text('CC'),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Abdul chisom', style: cardTextStyle,),
                SizedBox(height: 5,),
                Text('2345 **** **** 2345', style: cardTextStyle,),
                SizedBox(height: 5,),
                Text('12.9% if Total Top-ups', style: cardTextStyle,),
                SizedBox(height: 5,),
                Text('23,000', style: cardTextStyle,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
