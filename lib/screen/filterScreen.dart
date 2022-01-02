import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterScreenPage extends StatefulWidget {

  @override
  _FilterScreenPageState createState() => _FilterScreenPageState();
}

class _FilterScreenPageState extends State<FilterScreenPage> {
  // bool checkBoxValue = false;
  bool firsVal = false;
  bool secondVal = false;
  bool thirdVal = false;
  bool fourVal = false;
  bool fifthVal = false;
  bool sixVal = false;
  bool sevsnVal = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Easy",
                    style: TextStyle(fontFamily: 'Roboto'
                        ,fontWeight: FontWeight.bold

                    ),
                  ),
                  Text(" Way",
                    style: TextStyle(fontFamily: 'Roboto'
                        ,fontWeight: FontWeight.bold,
                        color: Colors.black

                    ),
                  ),
                ],
              ),

            ],
          ),
          backgroundColor:Color(0xffFFD700),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 700,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                  boxShadow: [BoxShadow(
                      blurRadius: 30,
                      offset: Offset(3,3),
                      color: Colors.black.withOpacity(0.4)),]
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Filter",
                  style: TextStyle(fontFamily: 'sf-pro-display-cufonfonts',
                      fontWeight: FontWeight.bold
                  ),
                        // style: TextStyle(color: Colors.black,

                        // ),
                        ),


                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Categories",
                          style: TextStyle(fontFamily: 'sf-pro-display-cufonfonts',
                              fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: Color(0xFF002B44),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Medical Services",
                          style: TextStyle(color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 12
                          ),
                        ),

                        Container(
                          height: 24,
                          width: 24,
                          child: Checkbox(
                            value: firsVal,
                            activeColor: Colors.amberAccent,
                            checkColor: Colors.black,
                            onChanged: (bool value) {
                              setState(() {
                                firsVal = value;
                              });
                            },
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Loundry Service",
                          style: TextStyle(fontFamily: 'sf-pro-display-cufonfonts',
                            fontSize: 12
                          ),
                        ),

                        Container(
                          height: 24,
                          width: 24,
                          child: Checkbox(
                            value: secondVal,
                            activeColor: Colors.amberAccent,
                            checkColor: Colors.black,
                            onChanged: (bool value) {
                              setState(() {
                                secondVal = value;
                              });
                            },
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Car Services",
                          style: TextStyle(fontFamily: 'sf-pro-display-cufonfonts',
                              fontSize: 12
                          ),
                        ),

                        Container(
                          height: 24,
                          width: 24,
                          child: Checkbox(
                            value: thirdVal,
                            activeColor: Colors.amberAccent,
                            checkColor: Colors.black,
                            onChanged: (bool value) {
                              setState(() {
                                thirdVal = value;
                              });
                            },
                          ),
                        ),

                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Beauty & Hair Cuts",
                          style: TextStyle(fontFamily: 'sf-pro-display-cufonfonts',
                              fontSize: 12
                          ),
                        ),

                        Container(
                          height: 24,
                          width: 24,
                          child: Checkbox(
                            value: fourVal,
                            activeColor: Colors.amberAccent,
                            checkColor: Colors.black,
                            onChanged: (bool value) {
                              setState(() {
                                fourVal = value;
                              });
                            },
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Ay",
                          style: TextStyle(fontFamily: 'sf-pro-display-cufonfonts',
                              fontSize: 12
                          ),
                        ),

                        Container(
                          height: 24,
                          width: 24,
                          child: Checkbox(
                            value: fifthVal,
                            activeColor: Colors.amberAccent,
                            checkColor: Colors.black,
                            onChanged: (bool value) {
                              setState(() {
                                fifthVal = value;
                              });
                            },
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Washing and Cleaning",
                          style: TextStyle(fontFamily: 'sf-pro-display-cufonfonts',
                              fontSize: 12
                          ),
                        ),

                        Container(
                          height: 24,
                          width: 24,
                          child: Checkbox(
                            value: sixVal,
                            activeColor: Colors.amberAccent,
                            checkColor: Colors.black,
                            onChanged: (bool value) {
                              setState(() {
                                sixVal = value;
                              });
                            },
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Media and photograpy",
                          style: TextStyle(fontFamily: 'sf-pro-display-cufonfonts',
                              fontSize: 12
                          ),
                        ),

                        Container(
                          height: 24,
                          width: 24,
                          child: Checkbox(
                            value: sevsnVal,
                            activeColor: Colors.amberAccent,
                            checkColor: Colors.black,
                            onChanged: (bool value) {
                              setState(() {
                                sevsnVal = value;
                              });
                            },
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));
                      },
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color(0xffFFD700),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(child: Text("Apply",style: TextStyle(
                          color: Colors.white,fontSize: 14,
                        ),
                        )),
                      ),
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
