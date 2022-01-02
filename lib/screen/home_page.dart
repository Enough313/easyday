import 'package:easyway/models/modeldata.dart';
import 'package:easyway/screen/profileScreen.dart';
import 'package:easyway/screen/services_categories.dart';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:image_picker/image_picker.dart';


import 'filterScreen.dart';
import 'job_detail.dart';

// import 'package:image_picker/image_picker.dart';

// import '../classData.dart';
// import 'filterScreen.dart';
// import 'job_detail.dart';

class Home_Page extends StatefulWidget {

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  var dropdownValue = 'Jaipur302019';

  bool _colorContainer = false;

  PickedFile imageFile;



  //  for Slider Bar
  final List<String> ImageList = [
    'images/img1.PNG',
    'images/img1.PNG',
    'images/img1.PNG',
    'images/img1.PNG',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Easy ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const Text(
                      'Way',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff02283C),
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
                Icon(Icons.notification_add_rounded, color: Color(0xff02283C)),
              ],
            ),
            backgroundColor: Color(0xffFFD700)),
        drawer: Drawer(
          
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    'User',
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    'User@gmail.com',
                    style: TextStyle(color: Colors.black),
                  ),

                  // code for image
                  currentAccountPicture: GestureDetector(
                    onTap: () => _showChoiceDialog(context),
                    child: CircleAvatar(
                      radius: 50,
                      child: Container(
                        height: 50,
                        width: 50,

                        decoration:  BoxDecoration(

                          //  border: Border.all(),
                            shape: BoxShape.circle,

                        ),

                        child: (imageFile == null)
                            ? Icon(Icons.person)
                            : Image.file(File(imageFile.path),fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.profile_circled),
                title: Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>ProfileScreenPage (),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.payment),
                title: Text('Payment'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>Jobs_Details_page (),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.feedback),
                title: Text('Feedback'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        //Body
        body: ListView(
          children: [
            Container(
              height: 120,
              width: 500,
              decoration: BoxDecoration(
                  color: Color(0xffFFD700),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 330,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(width: 3, color: Colors.white),
                      ),
                      color: Colors.white,
                      //elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 230,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: TextField(
                                  textAlignVertical: TextAlignVertical.bottom,
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(),
                                      prefixIcon: Icon(Icons.search),
                                      // suffixIcon: IconButton(
                                      //   icon: Icon(Icons.clear),
                                      //   onPressed: () {
                                      //     /* Clear the search field */},
                                      // ),
                                      hintText: 'Search for Servise',
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                          BorderRadius.circular(10)))),
                            ),

                            // code for near search icon
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Container(
                                  height: 40,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Color(0xffF4F5F8),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Center(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreenPage()));
                                      },
                                      child: Row(
                                        children: const [
                                          Text(
                                            '  Filter',
                                            style: TextStyle(
                                              fontFamily:
                                              'sf-pro-display-cufonfonts',
                                            ),
                                          ),
                                          Icon(Icons.filter_list),
                                        ],
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        // code for Cleaning
                        Container(
                          margin: EdgeInsets.fromLTRB(25, 5, 0, 0),
                          child: GestureDetector(
                              child: Text(
                                'Cleaning',
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'sf-pro-display-cufonfonts'),
                              ),
                              onTap: () {
                                Fluttertoast.showToast(
                                    msg: "This is Cleaning Short Toast",
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 12.0);
                              }),
                        ),

                        // code for Plumbing
                        Container(
                          margin: EdgeInsets.fromLTRB(25, 5, 0, 0),
                          child: GestureDetector(
                              child: Text(
                                'Plumbing',
                                style: TextStyle(
                                  fontFamily: 'sf-pro-display-cufonfonts',
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              onTap: () {
                                Fluttertoast.showToast(
                                    msg: "This is Plumbing Short Toast",
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 12.0);
                              }),
                        ),

                        // code for Painter
                        Container(
                          margin: EdgeInsets.fromLTRB(25, 5, 0, 0),
                          child: GestureDetector(
                              child: Text(
                                'Painter',
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'sf-pro-display-cufonfonts'),
                              ),
                              onTap: () {
                                Fluttertoast.showToast(
                                    msg: "This is Painter Short Toast",
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 12.0);
                              }),
                        ),

                        // code for Battery
                        Container(
                          margin: EdgeInsets.fromLTRB(25, 5, 0, 0),
                          child: GestureDetector(
                              child: const Text(
                                'Battery',
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'sf-pro-display-cufonfonts'),
                              ),
                              onTap: () {
                                Fluttertoast.showToast(
                                    msg: "This is Battery Short Toast",
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 12.0);
                              }),
                        ),
                      ],
                    ),
                  ),

                  // Code for Service Lovation
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(27, 0, 3, 0),
                          child: Icon(Icons.location_on_outlined)),
                      Text(
                        'Service Loaction near -  ',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'sf-pro-display-cufonfonts'),
                      ),

                      // code for DropdownButton
                      DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconSize: 20,
                        elevation: 16,
                        style: const TextStyle(
                            color: Colors.deepPurple,
                            decoration: TextDecoration.underline),
                        underline: SizedBox(),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>[
                          'Jaipur302019',
                          'Jaipur3020191',
                          'Jaipur3020192',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ],
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Services_Categories_Page()));
              },
                child: Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
                  child: Text(
                    "View all",
                    style: TextStyle(color: Color(0xff02283C)),
                  ),
                )),
            // code for listview Size Box
            SizedBox(
              height: 80,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list1name.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(5, 8, 0, 5),
                      height: 70,
                      width: 90,
                      child: ListTile(
                        // SnackBar snackBar =
                        // SnackBar(content: Text("Tapped : ${index + 1}"));
                        // ScaffoldMessenger.of(context).showSnackBar(snackBar);

                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                //color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                      width: 1, color: Colors.yellow)),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    // if(ItemData[index].isSelected == true)
                                    //   ItemData[index].isSelected = false;
                                    // else if(ItemData[index].isSelected == false)
                                    //   ItemData[index].isSelected = true;
                                  });

                                  // print(ItemData[index].isSelected);
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 22,
                                  child: Image.asset(
                                    list1imgurl[index],
                                    height: 30,
                                    width: 30,
                                  ),
                                  //backgroundImage: AssetImage(ItemData[index].list1img)
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                list1name[index],
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'sf-pro-display-cufonfonts'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),

            Container(
              margin: EdgeInsets.only(top: 5),
              width: MediaQuery.of(context).size.width,
              height: 160,
              // color: Colors.orange,
              child: CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    autoPlay: true),
                items: ImageList.map((e) => ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        e,
                        width: MediaQuery.of(context).size.width,
                        height: 160,
                        fit: BoxFit.fitWidth,
                        // fit: BoxFit.cover,
                      )
                    ],
                  ),
                )).toList(),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 8, 0),
              child: Text('Best Offers',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'sf-pro-display-cufonfonts')),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 8, 0),
              child: Text(
                'Hygienic and single-use products | low contact service',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'sf-pro-display-cufonfonts',
                ),
              ),
            ),

            // List view

            Container(
              //margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(15)),
              height: 150,
              width: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list2name.length,
                  itemBuilder: (context, index) {
                    return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 0,
                        child: Column(
                          children: [
                            Image.asset(
                              list2imgurl[index],
                              height: 110,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              list2name[index],
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'sf-pro-display-cufonfonts'),
                            ),
                            Text(
                              list2subtital[index],
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'sf-pro-display-cufonfonts'),
                            ),
                          ],
                        ));
                  }),
            ),
          ],
        ),
      ),
    );
  }

  void _openGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      imageFile = pickedFile;
    });

    Navigator.pop(context);
  }

  /// Get from camera
  void _openCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      imageFile = pickedFile;
    });
    Navigator.pop(context);
  }




  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Choose option",
              style: TextStyle(color: Colors.blue),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openGallery(context);
                    },
                    title: Text("Gallery"),
                    leading: Icon(
                      Icons.account_box,
                      color: Colors.blue,
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openCamera(context);
                    },
                    title: Text("Camera"),
                    leading: Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

