import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class medical_prescription extends StatefulWidget {
  const medical_prescription({Key? key}) : super(key: key);

  @override
  _medical_prescriptionState createState() => _medical_prescriptionState();
}

class _medical_prescriptionState extends State<medical_prescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 1),
      appBar: AppBar(
        actions: [


        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: 40,
            width: 60,
            child: const Image(
              image: AssetImage("assets/tameni.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
        // leadingWidth: 100,


        backgroundColor: const Color.fromRGBO(6, 187, 192, 10),

        elevation: 0,
      ),
      body: Stack(
          children: [
      Container(
      decoration: const BoxDecoration(
      color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20))),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                " روشتة علاج",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold)),
              ),
            ),
        SizedBox(height: 30,),
        Container(
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(137, 201, 203,100),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(0,2 ),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),
          height: MediaQuery.of(context).size.height*.54,
          width:MediaQuery.of(context).size.width*.9,
        child:Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.teal[100],
                child: Text("logo",style: TextStyle(color: Colors.white),),
              ),
              Column(
                children: [
                  Text(
                    " الهيئة العامة للتأمين الصحى",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    "مستشفى الفردوس الحكومى",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold,color: Colors.grey)),
                  ),
                ],
              ),
            ],),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(height: 1,
          color: Colors.teal[100],),
        ),
          Padding(
            padding: const EdgeInsets.only(right: 110,top: 30,bottom: 5),
            child: Text(
              " RX/ Panadol extra 500 mg",
              style: GoogleFonts.dancingScript(
                  textStyle: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text(
              "مرتين يوميا صباحا ومساءا",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold,color: Colors.grey)),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(right: 110,top: 30,bottom: 5),
            child: Text(
              " RX/ Panadol extra 500 mg",
              style: GoogleFonts.dancingScript(
                  textStyle: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text(
              "مرتين يوميا صباحا ومساءا",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold,color: Colors.grey)),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Container(height: 1,
              color: Colors.teal[100],),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 3),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                    Text(
                      " ختم التأمين",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold,)),
                    ),
                    Text(
                      "إمضاء الطبيب",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold,)),
                    ),


              ],),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 35,right: 30),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.teal[100],

                ),
                Column(
                  children: [
                    Text(
                      "jmrb",
                      style: GoogleFonts.dancingScript(
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],),
          ),
        ],),


          ),
            Padding(
              padding: const EdgeInsets.only(top: 25,bottom: 10),
              child: FlatButton(
                child: Text(
                  ' حفظ',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                color: const Color.fromRGBO(6, 187, 192, 1),
                textColor: Colors.white,
                minWidth: 180,
                height: 55,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10,)),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => signIn()));
                },
              ),
            ),
            FlatButton(
              child:Text(
              "طباعة",
              style: GoogleFonts.roboto(
              textStyle: TextStyle(color:Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)
              ),
              

              color: const Color.fromRGBO(6, 187, 192, 1),
              
              textColor: Colors.white,
              minWidth: 180,
              height: 55,
              shape: RoundedRectangleBorder(
                
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => signIn()));
              },
            ),



          ],
        ),

      ),
    ])
    );
  }
}
