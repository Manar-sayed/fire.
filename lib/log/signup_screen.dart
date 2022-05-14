import 'package:fire/log/siginSuccess.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import '../color_utils.dart';
import '../widget.dart';
import 'home_screen.dart';

class signUP extends StatefulWidget {
  final int type;

  const signUP({required this.type});

  @override
  _signUPState createState() => _signUPState();
}

class _signUPState extends State<signUP> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _phoneTextController = TextEditingController();
  TextEditingController _idNumberTextController = TextEditingController();
  TextEditingController _fieldTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("#98EBEE"),

            hexStringToColor("#06BBC0"),
            hexStringToColor("#1BA3D6")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "الاسم رباعى",
                    Icons.drive_file_rename_outline,
                    false,
                    _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("أدخيل الجيميل ", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("الرقم القومى", Icons.person_outline, false,
                    _idNumberTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "رقم التليفون", Icons.phone, false, _phoneTextController),
                const SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: widget.type == 2,
                  child: reusableTextField("التخصص", Icons.person_outline,
                      false, _fieldTextController),
                ),
                const SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: widget.type == 1,
                  child: reusableTextField("تاريخ الميلاد",
                      Icons.person_outline, false, _emailTextController),
                ),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("أدخل كلمة السر ", Icons.lock_outlined, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),

                firebaseUIButton(context, "انشاء حساب ", () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    print("Created New Account");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => siginsuccess(type: 2,)));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                })
              ],
            ),
          ))),
    );
  }
}
