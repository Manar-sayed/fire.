
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'main.dart';
//import 'package:lottie/lottie.dart';

class appointment extends StatefulWidget {
  @override
  State<appointment> createState() => _appointmentState();
}

class _appointmentState extends State<appointment> {
  get color => null;
  bool isLoading = true;

  List  data = [];

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    final response = await Dio().get("https://fire-basse-c631c-default-rtdb.firebaseio.com/test/.json");
    isLoading = false;
    data = response.data;
    setState(() {});
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    var index=0;
    return Scaffold(

      backgroundColor: Colors.white,

      body: Center (
        child: Padding (
        padding: const EdgeInsets.symmetric(vertical: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             //Container(
        //      width: MediaQuery.of(context).size.width, height: 200,
        //         child: Lottie.network(
        //             "https://assets2.lottiefiles.com/private_files/lf30_rxa1croq.json"),
        // ),
            Lottie.asset("assets/check.json",height: 200,width: MediaQuery.of(context).size.width),




             const Text(
                 "شكرا لك",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                    color:Color.fromRGBO(6, 187, 192, 1),
                    fontSize: 30 ,
                    fontWeight: FontWeight.bold,
                  ),),
                 const Text(
                 "  لقد تم تأكيد حجزك",
                 textAlign: TextAlign.center,
                 style:  TextStyle(
                    color:Colors.black,
                    fontSize: 22 ,
                    fontWeight: FontWeight.bold,
                  ),
               ),

                 const Text(
                 "قمت بحجز الموعد يوم الاثنين 20 نوفمبر",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                    color:Colors.black45,
                    fontSize: 17 ,
                    fontWeight: FontWeight.bold,
                  ),
               ),
               //    Text(
               //   data[index]['title'],
               //   textAlign: TextAlign.center,
               //   style: TextStyle(
               //      color:Colors.black45,
               //      fontSize: 17 ,
               //      fontWeight: FontWeight.bold,
               //    ),
               // ),

            SizedBox(

              height: 50,
              width:  155,
              child: FlatButton(

                color: const Color.fromRGBO(6, 187, 192, 1),

                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MyApp();
                  }));
                },

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child:const Text(
                "تم",
                textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30 ,
                    fontWeight: FontWeight.bold,



                  ),


                )
            )

              ),

           ],
        ),
        ),



            )

              );





  }
}


