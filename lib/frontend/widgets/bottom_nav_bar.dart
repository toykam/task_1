import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key key, this.selected}) : super(key: key);
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selected,
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
    );
  }
}
