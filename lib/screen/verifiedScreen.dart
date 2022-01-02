import 'package:flutter/material.dart';

import 'home_page.dart';

class VerifiedScreen extends StatefulWidget {

  @override
  _VerifiedScreenState createState() => _VerifiedScreenState();
}

class _VerifiedScreenState extends State<VerifiedScreen> {
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
                    InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifiedScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.amber,
                              size: 35,
                            )),
                        
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Verified!",style: TextStyle(color: Colors.white,
                    fontSize: 25,fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child: Text(
                        "You have successfuly verify the Account",
                        textAlign: TextAlign.center,

                        style: TextStyle(color: Colors.white,
                        fontSize: 18,
                      ),),
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
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Page()));
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
          ],
        ),
      ),
    );
  }
}
