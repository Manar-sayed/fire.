

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fire/patient/subject.dart';

import 'package:flutter/material.dart';

import 'QRcode.dart';
import 'alerts.dart';
import 'calender.dart';
import 'chat2.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentindex = 2;
  final List _screens = [
    const QRcode(),
    const alerts(),
    const subject(),
    const chat(),
    const calender(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        //key: _bottomNavigationKey,
        index: 2,
        height: 55.0,
        items: const <Widget>[
          Icon(Icons.qr_code, size: 25,color: Colors.white,),
          Icon(Icons.add_alert_sharp,size: 25,color: Colors.white,),
          Icon(Icons.home_outlined, size: 25,color: Colors.white,),
          Icon(Icons.chat_outlined, size: 25,color: Colors.white,),
          Icon(Icons.calendar_today_rounded, size: 25,color: Colors.white,),
        ],
        color: Color.fromRGBO(6, 187, 192, 10),
         buttonBackgroundColor:  Color.fromRGBO(6, 187, 192, 10),
         backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
        letIndexChange: (index) => true,
      ),

      body: _screens[_currentindex],
    );
  }
}