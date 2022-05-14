
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../doctor/chat_room_doctor.dart';
import '../widget.dart';


class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(6, 187, 192, 10),

    // appBar: AppBar(
    // actions: [
    // IconButton(
    // onPressed: () {},
    // icon: Icon(
    // Icons.menu_open_rounded,
    // color: Colors.white,
    // size: 30,
    // ))
    // ],
    // leading: Padding(
    // padding: const EdgeInsets.only(left: 10),
    // child: Container(
    // height: 40,
    // width: 60,
    // child: const Image(
    // image: AssetImage("assets/tameni.png"),
    // fit: BoxFit.contain,
    // ),
    // ),
    // ),
    // // leadingWidth: 100,
    //
    //
    // backgroundColor: const Color.fromRGBO(6, 187, 192, 10),
    //
    // elevation: 0,
    // ),
    body: Container(
        margin: EdgeInsets.only(top: 10),
    decoration: const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(20),
    topLeft: Radius.circular(20))),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [
            Text(
              "الاستشارات ",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 26, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Icon(Icons.add_circle_outline,color:  Color.fromRGBO(6, 187, 192, 10),size: 44,),
                SizedBox(width: 20,),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(137, 201, 203,100),
                          blurRadius: 3,
                          spreadRadius: .5,
                          offset: Offset(0,2 ),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  width: MediaQuery.of(context).size.width * .66,
                  child: TextFormField(
                    textAlign: TextAlign.end,
                    // controller: controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.grey[400]),
                      disabledBorder: InputBorder.none,
                      hintText: ' بحث',


                      hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20,letterSpacing: 2,),

                      border: const OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text(
                  "المؤرشفة ",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),color: Color.fromRGBO(6, 187, 192, 10),),
                ),
                SizedBox(width: 20,),
                Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "الكل ",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 187, 192, 10),)),
                      ),
                    ),
                    Container(width: 60,height: 5,decoration: BoxDecoration(color: Color.fromRGBO(6, 187, 192, 30),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))),)
                  ],
                ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(height: 2,color: Color.fromRGBO(6, 187, 192, 100),),
            ),
            Flexible(
              child: ListView(
                children: [
                  chat1("",Colors.transparent),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailChat(

                          ),
                        ),
                      );
                    },
                    child: Container(color: Colors.teal.shade50,
                        child: chat1("2",Color.fromRGBO(6, 187, 192, 10))),
                  ),
                  chat1("",Colors.transparent),
                  chat1("",Colors.transparent),
                  chat1("",Colors.transparent),
                  chat1("",Colors.transparent),

                ],
              ),
            )




          ],
        ),
      ),
    ))
    );
  }
}
