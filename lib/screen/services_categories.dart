
import 'package:easyway/models/modeldata.dart';
import 'package:flutter/material.dart';


import 'filterScreen.dart';

class Services_Categories_Page extends StatefulWidget {

  @override
  _Services_Categories_PageState createState() => _Services_Categories_PageState();
}

class _Services_Categories_PageState extends State<Services_Categories_Page> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),
        //   onPressed: () { },
        //
        // ),
        backgroundColor: Color.fromRGBO(255, 215, 0, 1),
        title: Text('Categories',textAlign: TextAlign.center, style: TextStyle(
          fontFamily: 'sf-pro-display-cufonfonts',
            fontWeight: FontWeight.bold,
          color: Colors.black
        ),),
        centerTitle: true,
      ),

      body: ListView(
        children:[ Container(

          decoration: BoxDecoration(
           // border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 10, right: 5),
          child: ListTile(
            leading: const Icon(
              Icons.search,
              color: Colors.black26,
            ),
            title: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search for service...'),
            ),

            trailing: Container(
              width: 90,
              height: 35,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(239, 240, 244, 1))),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreenPage()));
                  },
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                            'Filter',
                            style: TextStyle(
                              fontFamily: 'sf-pro-display-cufonfonts',
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                      Expanded(
                          child: Icon(Icons.filter_list_sharp,
                              color: Colors.black))
                    ],
                  ),
                ),
              ),
            ),
          ),

        ),
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Text('categories of services', style: TextStyle(
              fontFamily: 'sf-pro-display-cufonfonts',
              fontWeight: FontWeight.bold,color: Color(0xff091638)
            ),),
          ),

          SizedBox(height: MediaQuery.of(context).size.height, width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: servicename.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 0, 5),



                    child: ListTile(

                      // SnackBar snackBar =
                      // SnackBar(content: Text("Tapped : ${index + 1}"));
                      // ScaffoldMessenger.of(context).showSnackBar(snackBar);

                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Container(
                              //margin: EdgeInsets.only(top: 15),
                              child: ListTile(
                                minVerticalPadding: 15,
                                leading: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration:  BoxDecoration(
                                        //color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(25),
                                          border: Border.all(width: 1,color: Colors.yellow)
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 20,
                                        child: Image.asset(serviceData[index].srvsimgurl,height: 25,width: 25,),
                                      //backgroundImage: AssetImage(ItemData[index].list1img)
                                      ),
                                    ),

                                    Expanded(
                                      child: Text(serviceData[index].srvsname,

                                        style: TextStyle(fontSize: 10,
                                            fontFamily: 'sf-pro-display-cufonfonts'),),
                                    ),


                                  ],
                                ),
                                title: Text(serviceData[index].srvssubtital
                                  ,style: TextStyle(
                                    fontFamily: 'sf-pro-display-cufonfonts',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),),
                                trailing: Icon(Icons.keyboard_arrow_up,size: 40, color: Colors.black,),
                              ),
                            ),
                          ),




                        ],
                      ),
                    ),
                  );
                }),
          ),

          // SizedBox(
          //   height: 10,
          // ),

          //
          // SizedBox(
          //   height: 10,
          // ),
          // Container(
          //   child: Card(
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(20)
          //     ),
          //     child: ListTile(
          //       minVerticalPadding: 15,
          //       contentPadding: EdgeInsets.all(20),
          //       leading: Column(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Expanded(child:  ImageIcon(
          //             AssetImage("images/appliances.png"),
          //             // color: Color(0xFF3A5A98),
          //           ),
          //           ),
          //           SizedBox(
          //             height: 10,
          //           ),
          //           Expanded(child: Text('Plumbing',style: TextStyle(
          //               fontFamily: 'sf-pro-display-cufonfonts',
          //               fontSize: 10
          //           ),))
          //         ],
          //       ),
          //       title: Text('Plumbing Service',style: TextStyle(
          //           fontFamily: 'sf-pro-display-cufonfonts',
          //           fontWeight: FontWeight.bold,
          //           fontSize: 15
          //       ),),
          //       trailing: Icon(Icons.keyboard_arrow_up,size: 40, color: Colors.black,),
          //     ),
          //   ),
          // ),
          //
          // SizedBox(
          //   height: 10,
          // ),
          //
          // Container(
          //   child: Card(
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(20)
          //     ),
          //
          //     child: ListTile(
          //       minVerticalPadding: 15,
          //       contentPadding: EdgeInsets.all(20),
          //       leading: Column(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Expanded(child:  ImageIcon(
          //             AssetImage("images/appliances.png"),
          //             // color: Color(0xFF3A5A98),
          //           ),
          //           ),
          //           SizedBox(
          //             height: 10,
          //           ),
          //           Expanded(child: Text('AC Repair',style: TextStyle(
          //               fontFamily: 'sf-pro-display-cufonfonts',
          //               fontSize: 10
          //           ),))
          //         ],
          //       ),
          //       title: Text('AC Repairing Service',style: TextStyle(
          //           fontFamily: 'sf-pro-display-cufonfonts',
          //           fontWeight: FontWeight.bold,
          //           fontSize: 15
          //       ),),
          //       trailing: Icon(Icons.keyboard_arrow_up,size: 40, color: Colors.black,),
          //     ),
          //   ),
          // ),
          //
          // SizedBox(
          //   height: 10,
          // ),
          // Container(
          //
          //   child: Card(
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(20)
          //     ),
          //
          //     child: ListTile(
          //       minVerticalPadding: 15,
          //       contentPadding: EdgeInsets.all(20),
          //
          //       leading: Column(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Expanded(child: ImageIcon(
          //             AssetImage("images/appliances.png"),
          //             // color: Color(0xFF3A5A98),
          //           ),
          //           ),
          //           SizedBox(
          //             height: 10,
          //           ),
          //           Expanded(child: Text('Appliance',style: TextStyle(
          //               fontFamily: 'sf-pro-display-cufonfonts',
          //               fontSize: 10
          //           ),))
          //         ],
          //       ),
          //       title: Text('Appliance Service',style: TextStyle(
          //           fontFamily: 'sf-pro-display-cufonfonts',
          //           fontWeight: FontWeight.bold,
          //           fontSize: 15
          //       ),),
          //       trailing: Icon(Icons.keyboard_arrow_up,size: 40, color: Colors.black,),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Container(
          //
          //   child: Card(
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(20)
          //     ),
          //
          //     child: ListTile(
          //       minVerticalPadding: 15,
          //       contentPadding: EdgeInsets.all(20),
          //       leading: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           ImageIcon(
          //             AssetImage("images/appliances.png"),
          //             // color: Color(0xFF3A5A98),
          //           ),
          //
          //           Text('Appliance',style: TextStyle(
          //               fontFamily: 'sf-pro-display-cufonfonts',
          //               fontSize: 10
          //           ),)
          //         ],
          //       ),
          //       title: Text('Appliance Service',style: TextStyle(
          //           fontFamily: 'sf-pro-display-cufonfonts',
          //           fontWeight: FontWeight.bold,
          //           fontSize: 15
          //       ),),
          //       trailing: Icon(Icons.keyboard_arrow_up,size: 40, color: Colors.black,),
          //     ),
          //   ),
          // ),


        ]
      ),
    );
  }
}
