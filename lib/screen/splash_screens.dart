import 'dart:async';
import 'package:easyway/screen/signupScreen.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';


class Splash_Screen extends StatefulWidget {
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}
class _Splash_ScreenState extends State<Splash_Screen> {

   initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>SignupScreen()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(

        body: ListView(

          children: [
           
            Container(
             // color: Colors.grey,
              margin: EdgeInsets.only(top: 100),
              height: 140,
              width: double.infinity,
              child: Image.asset('images/splash_screen_pic.png',height: 135,width: 135,),
            ),

            Center(
              child: Container(
               // margin: EdgeInsets.fromLTRB(100, 20, 100, 0),
           //  color: Colors.orange,
                height: 55,
                width: 150,
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: Row(
                        children: [
                          Text('Easy ',style: TextStyle(color: Color(0xffFFD700),fontSize: 20,fontWeight: FontWeight.bold),),
                          Text('Way',style: TextStyle(color: Color(0xff2A4D61),fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Text('POWERD BY ENOUGH TECHNOLOGY',style: TextStyle(color: Colors.grey,fontSize: 9),),
                  ],
                ),
              ),
            ),

            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Transform.translate(
                      offset: Offset(30, 50),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                         // margin: EdgeInsets.fromLTRB(250, 25, 0, 0),
                          child: CircleAvatar(
                            backgroundColor: Color(0xffFFD700),
                            radius: 55,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Transform.translate(
              offset: Offset(-20, 80),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(top: 0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xff82959E),
                        radius: 78
                      ),
                    ],
                  ),
                ),
              ),
            )
  
         ]
        ),

    );
  }
}


