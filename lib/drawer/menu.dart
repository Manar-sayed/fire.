
import 'package:flutter/material.dart';

import '../color.dart';
import '../doctor/doctor_not.dart';
import '../doctor/doctor_profile.dart';
import '../my_widgets.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: MyColors().primaryColor,
            body: Padding(
              padding: const EdgeInsets.only(right: 10, top: 40),
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 18,bottom: 10),
                  //   child: Icon(Icons.menu_open_rounded,color:MyColors().white,size: 30,),
                  // ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          'assets/male doctor.png',
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18, top: 10),
                    child: WhiteText(text: 'مرحبا', size: 22),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18, bottom: 30),
                    child: WhiteText(text: 'د. علي ', size: 22),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => doctor_profile(),
                          ),
                        );
                      },
                      child: TextWithIcon(
                          text: 'الملف الشخصي', icon: Icons.person)),
                  SizedBox(
                    height: 7,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => notifacation(),
                          ),
                        );
                      },
                      child: TextWithIcon(
                          text: 'التنبيهات', icon: Icons.notifications)),
                  SizedBox(
                    height: 7,
                  ),
                  TextWithIcon(text: 'المساعدة', icon: Icons.help),
                  SizedBox(
                    height: 7,
                  ),
                  TextWithIcon(
                    text: 'الاعدادات',
                    icon: Icons.settings,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  TextWithIcon(
                      text: 'تسجيل الخروج', icon: Icons.logout_outlined),
                  SizedBox(
                    height: 7,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
