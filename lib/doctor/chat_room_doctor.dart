import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../botton_screens/botton.dart';
import '../botton_screens/chat.dart';

class DetailChat extends StatefulWidget {
  const DetailChat({Key? key}) : super(key: key);

  @override
  _DetailChatState createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 1),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Row(
            children: [
              // IconButton(
              //   onPressed: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context) {
              //       return const HomeScreen();
              //     }));
              //   },
              //   icon: const Icon(
              //     Icons.arrow_back_ios,
              //     size: 30,
              //   ),
              //   color: Colors.white,
              // ),
              Container(
                  width: 50,
                  height: 50,
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: AssetImage("assets/45.jpg"),
                              fit: BoxFit.cover),),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(6, 187, 192, 10),
                            border: Border.all(color: Colors.white, width: 2)),
                      ),
                    ),
                  ])),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Text("محمد أحمد",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40),
                    child: Text("متصل",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        )),
                  )
                ],
              )
            ],
          ),
        ),

        // leadingWidth: 100,

        backgroundColor: const Color.fromRGBO(6, 187, 192, 10),

        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Positioned(
            bottom: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              child: Container(
                //alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width * .9,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(137, 201, 203, 40),
                      blurRadius: 3,
                      spreadRadius: .3,
                      offset: Offset(0, 2),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(

                        //margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white24,
                        ),
                        child: Row(children: const [
                          SizedBox(height: 5),
                          Icon(
                            Icons.camera_alt_outlined, size: 25,
                            color: Color.fromRGBO(6, 187, 192, 10),
                            // color: Theme.of(context)
                            //     .textTheme
                            //     .bodyText1!
                            //     .color!
                            //     .withOpacity(0.64),
                          ),
                          SizedBox(width: 140),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "أكتب هنا",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.mic,
                            size: 25,
                            color: Color.fromRGBO(6, 187, 192, 10),
                          ),
                          // Icon(
                          //   Icons.send_rounded,
                          //   color: Theme.of(context)
                          //       .textTheme
                          //       .bodyText1!
                          //       .color!
                          //       .withOpacity(0.64),
                          // ),
                          SizedBox(width: 15),
                          Icon(
                            Icons.send_rounded, size: 25,
                            color: Color.fromRGBO(6, 187, 192, 10),
                            // color: Theme.of(context)
                            //     .textTheme
                            //     .bodyText1!
                            //     .color!
                            //     .withOpacity(0.64),
                          ),
                          //   IconButton(
                          //       onPressed: () {},
                          //       icon: Icon(Icons.attach_file_rounded), color: Color.fromRGBO(6, 187, 192, 10),),
                          //   Text(
                          //     "....أكتب هنا",
                          //     style: TextStyle(color: Colors.grey,  fontSize: 17),
                          //   ),
                        ])),
                    // IconButton(onPressed: (){}, icon: Icon(Icons.mic_outlined, size: 35,), color: Color.fromRGBO(6, 187, 192, 10),)
                  ],
                ),
              ),
            ),
          ),
          Align(
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    " اليوم ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "RobotoBold",
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.23,
                      top: 20,
                      right: 20),
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.width * 0.15,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(6, 187, 192, 10),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )),
                  child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                        left: 15,
                        //right: 10
                      ),
                      child: const Text(
                        "مرحبا أحمد كيف يمكننى مساعدتك؟",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.23,
                      top: 20,
                      left: 20),
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.width * 0.15,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(137, 201, 203, 100),
                          blurRadius: 5,
                          spreadRadius: .5,
                          offset: Offset(0, 2),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                  child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                        left: 20,
                        //right: 10
                      ),
                      child: const Text(
                        "أشعر بألم شديد فى هذا الجزء من قدمى",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.23,
                      top: 0,
                      left: 12),
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Stack(alignment: Alignment.center, children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        child: Image.asset("assets/leg.jpg"),
                      )
                    ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.23,
                      top: 20,
                      right: 20),
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.width * 0.15,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(6, 187, 192, 10),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )),
                  child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                        left: 15,
                        //right: 10
                      ),
                      child: const Text(
                        "هل يمكنك زيارتى فى العيادة غدا؟",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                ),
                Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.20,
                        top: 20,
                        left: 20),
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.width * 0.15,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(137, 201, 203, 100),
                            blurRadius: 5,
                            spreadRadius: .5,
                            offset: Offset(0, 2),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.play_arrow,
                            color: Color.fromRGBO(6, 187, 192, 10),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 180,
                                  height: 3,
                                  color: Colors.grey[300],
                                ),
                                Container(
                                  width: 100,
                                  height: 3,
                                  color: Color.fromRGBO(6, 187, 192, 10),
                                  margin: EdgeInsets.only(right: 100),
                                ),
                                Container(
                                  height: 8,
                                  width: 150,
                                  decoration: const BoxDecoration(
                                    color: Colors.cyan,
                                    shape: BoxShape.circle,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Text(
                            "0.30/1:00",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      // alignment: Alignment.center,
                      // margin: EdgeInsets.only(
                      //   left: 20,
                      //   //right: 10
                      // ),
                      // child: Text(
                      //   "حسنا, شكرا جزيلا",
                      //   style: TextStyle(
                      //       color: Colors.grey,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 16),
                      // )),
                    )), //record
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
