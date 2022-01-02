import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProfileScreenPage extends StatefulWidget {

  @override
  _ProfileScreenPageState createState() => _ProfileScreenPageState();
}

class _ProfileScreenPageState extends State<ProfileScreenPage> {
  var rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Rate For Service",
                style: GoogleFonts.roboto(fontSize: 15,color: Color(0xff02283C),
                  fontWeight: FontWeight.w700
                ),
              ),


            ],
          ),
          backgroundColor:Color(0xffFFD700)
      ),

      body: SingleChildScrollView(
      primary: false,

      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                ),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xffFFD700),
                   // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                  ),
                ),
              ),
            ),
          ),

          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:50,left: 15,right: 15),
                  child: Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [BoxShadow(
                            blurRadius: 30,
                            offset: Offset(3,3),
                            color: Colors.black.withOpacity(0.4)),]
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:37),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffFFD700),
                                size: 18,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("4.2",style: TextStyle(
                                fontFamily: "sf-pro-display-cufonfonts",
                              ),),
                            ],
                          ),
                        ),
                        Text("Alex Harris"),
                        Divider(
                          thickness: 1.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text("3250"),
                                Text("Total job"),
                              ],
                            ),
                            SizedBox(
                              width: 65,
                            ),
                            Column(
                              children: [
                                Text("2.5"),
                                Text("Years"),
                              ],
                            ),

                          ],
                        ),
                        
                      ],
                    ),

                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                        "images/profile_image.png"
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200,left: 25),
            child: Text("PERSONAL INFO",style: TextStyle(
                fontFamily: "sf-pro-display-cufonfonts",
                fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250,left: 100),
            child: Container(

              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("+91 931 488 2375")),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Alex@gmail.com")),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("English and Aspanish")),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("+91 931 488 2375")),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400,left: 20),
            child: Container(

              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Review",style: TextStyle(fontFamily: "sf-pro-display-cufonfonts"),)),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                'images/daimend_pic.png'
                            ),
                          ),
                        ),
                      ),
                      Text("SIVIG"),
                      SmoothStarRating(
                        rating: rating,
                        isReadOnly: false,
                        size: 20,
                        color: Colors.amber,
                        borderColor: Colors.grey,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 2.0,
                        onRated: (value) {
                          print("rating value -> $value");
                          // print("rating value dd -> ${value.truncate()}");
                        },
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Service goood,")),

                  SizedBox(
                    height: 20,
                  ),


                ],
              ),
            ),
          ),


        ],
      ),
    ),
    );
  }
}
