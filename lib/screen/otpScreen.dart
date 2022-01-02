import 'dart:ffi';

import 'package:easyway/screen/verifiedScreen.dart';
import 'package:flutter/material.dart';


class OtpScreen extends StatefulWidget {

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Easy",style: TextStyle(color: Color(0xFFFED700),fontWeight: FontWeight.bold,
                      fontSize: 27
                  ),),
                  Text(" Way",style: TextStyle(color: Color(0xFF002B44),fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text("POWERED BY ENOUGH TECHNOLOGY",style: TextStyle(color: Color(0xFF002B44),
                fontSize: 12,),),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                height: 315,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF022C43),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        child: Text(
                          "Please Verify Mobail Code",style: TextStyle(fontSize: 24,color: Colors.white,
                        fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                      child: Container(
                        width: double.infinity,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Column(
                            children: [
                              Text("Please enter 4 digits verification",
                              style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Code send to your cell number",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("03345713838",style: TextStyle(fontSize: 16,
                                  fontWeight: FontWeight.bold),),
                                  Text(" Via SMS meassage",style: TextStyle(fontSize: 16),),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("or",style: TextStyle(fontSize: 16),),

                                  Text(" CHANGE",style: TextStyle(fontSize: 16,color: Colors.amber,

                                  ),),

                                  Text(" Your Cell Number",style: TextStyle(fontSize: 16),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: TextField(

                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(fontSize: 40),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                                focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color:
                                Colors.white,width: 1)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(fontSize: 40),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                              focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color:
                              Colors.white,width: 1)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(fontSize: 40),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                              focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color:
                              Colors.white,width: 1)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(fontSize: 40),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                              focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color:
                              Colors.white,width: 1)),
                            ),
                          ),
                        ),

                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifiedScreen()));
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF002B44),
                ),
               child: Icon(
                  Icons.arrow_forward,
                 color: Colors.white,
                 size: 17,
                )),
            ),

            // Container(
            //   child: Stack(
            //     children: [
            //       Opacity(opacity: 0.5,
            //         child: ClipPath(
            //           clipper: WaveClipper(),
            //           child: Container(
            //             color: Colors.amber,
            //             height: 180,
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
//
// class WaveClipper extends CustomClipper<Path>{
//   @override
//   Path getClip(Size size) {
//     // TODO: implement getClip
//     debugPrint(size.width.toString());
//     var path = new Path();
//     path.lineTo(0, size.height);
//     var firstStart = Offset(size.width/1, size.height);
//     var firstEnd = Offset(size.width/1, size.height - 20.0);
//     path.quadraticBezierTo(firstStart.dx,firstStart.dy,firstEnd.dx,firstEnd.dy);
//
//
//     var secondStart = Offset(size.width - (size.width/3.24), size.height - 105);
//     var secondEnd = Offset(size.width,size.height - 10);
//     path.quadraticBezierTo(secondStart.dx,secondStart.dy,secondStart.dx,secondStart.dy);
//     path.lineTo(size.width,0);
//
//     path.close();
//     return path;
//     throw UnimplementedError();
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     // TODO: implement shouldReclip
//     throw UnimplementedError();
//   }
// }
