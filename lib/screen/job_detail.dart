
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
class Jobs_Details_page extends StatefulWidget {

  @override
  _Jobs_Details_pageState createState() => _Jobs_Details_pageState();
}

class _Jobs_Details_pageState extends State<Jobs_Details_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          elevation: 0,
          title: Text("Payment details & Receipt",
            style: TextStyle(fontFamily: 'Roboto'
                ,fontWeight: FontWeight.bold

            ),
          ),
          backgroundColor:Color(0xffFFD700),
        ),


        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Rs.',
                      style: TextStyle(
                          color: Colors.amber,
                          fontFamily: 'sf-pro-display-cufonfonts',
                          fontWeight: FontWeight.w700,
                          fontSize: 10),
                    ),
                    Text(
                      '154.77',
                      style: TextStyle(
                          color: Color(0xFFFFDD23),
                          fontFamily: 'sf-pro-display-cufonfonts',
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Payment made successfully by card',
                  style: TextStyle(
                      fontFamily: 'sf-pro-display-cufonfonts',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF656565),
                      fontSize: 18),
                ),
                const Divider(
                  thickness: 1,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Payment Details',
                        style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'sf-pro-display-cufonfonts',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '2Hrs.30min',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.amberAccent,
                          fontFamily: 'sf-pro-display-cufonfonts',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: const Text(
                    'new shower installed with wall sockets and general service and'
                    ' cleaning pipe...',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 13,
                      fontFamily: 'sf-pro-display-cufonfonts',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Date & time',
                            style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'sf-pro-display-cufonfonts',
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                          Text(
                            '22 Dec 20 at 9:42 am',
                            style: TextStyle(
                                color: Colors.black12,
                                fontFamily: 'sf-pro-display-cufonfonts',
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 15, top: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Service Type',
                            style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'sf-pro-display-cufonfonts',
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                          Text(
                            'Plumber',
                            style: TextStyle(
                                color: Colors.black12,
                                fontFamily: 'sf-pro-display-cufonfonts',
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 15, top: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Job Type',
                            style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'sf-pro-display-cufonfonts',
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                          Text(
                            'Installation',
                            style: TextStyle(
                                color: Colors.black12,
                                fontFamily: 'sf-pro-display-cufonfonts',
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),

                    //Row Widget for Alex Haris

                    // Container(
                    //   margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
                    //   child: Row(
                    //     children: const [
                    //       Text(
                    //         'You rated ',
                    //         style: TextStyle(
                    //             fontFamily: 'sf-pro-display-cufonfonts',
                    //             fontWeight: FontWeight.w700,
                    //             fontSize: 12,
                    //             color: Colors.black45),
                    //       ),
                    //       SizedBox(
                    //         width: 8,
                    //       ),
                    //       Text(
                    //         '"Alex Harris"',
                    //         style: TextStyle(
                    //             fontFamily: 'sf-pro-display-cufonfonts',
                    //             fontWeight: FontWeight.w700,
                    //             fontSize: 14,
                    //             color: Colors.black54),
                    //       ),
                    //       SizedBox(
                    //         width: 10,
                    //       ),
                    //       CircleAvatar(
                    //           radius: 15,
                    //           backgroundImage: AssetImage('images/alex.jpg')),
                    //       SizedBox(
                    //         width: 8,
                    //       ),
                    //       Icon(
                    //         Icons.star_rate,
                    //         color: Colors.amberAccent,
                    //       ),
                    //       Icon(
                    //         Icons.star_rate,
                    //         color: Colors.amberAccent,
                    //       ),
                    //       Icon(
                    //         Icons.star_rate,
                    //         color: Colors.amberAccent,
                    //       ),
                    //       Icon(
                    //         Icons.star_rate,
                    //         color: Colors.amberAccent,
                    //       ),
                    //       Icon(
                    //         Icons.star_rate,
                    //         color: Colors.grey,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          height: 40,
                          width: 500,
                          color: Colors.black12,
                          child: const Text(
                            'RECEIPT',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'sf-pro-display-cufonfonts',
                                fontWeight: FontWeight.w700,
                                color: Colors.black38),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 20, right: 15, top: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Job Type',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'sf-pro-display-cufonfonts',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                              Text(
                                '\$100.25',
                                style: TextStyle(
                                    color: Colors.black12,
                                    fontFamily: 'sf-pro-display-cufonfonts',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 20, right: 15, top: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Tax',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'sf-pro-display-cufonfonts',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                              Text(
                                '\$10.00',
                                style: TextStyle(
                                    color: Colors.black12,
                                    fontFamily: 'sf-pro-display-cufonfonts',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 20, right: 15, top: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '+ Parts Amt',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'sf-pro-display-cufonfonts',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                              Text(
                                '\$50.50',
                                style: TextStyle(
                                    color: Colors.black12,
                                    fontFamily: 'sf-pro-display-cufonfonts',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 20, right: 15, top: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Discount',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'sf-pro-display-cufonfonts',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                              Text(
                                '\$10.00',
                                style: TextStyle(
                                    color: Colors.black12,
                                    fontFamily: 'sf-pro-display-cufonfonts',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 20, right: 15, top: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Topup Added',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'sf-pro-display-cufonfonts',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                              Text(
                                '\$25',
                                style: TextStyle(
                                    color: Colors.black12,
                                    fontFamily: 'sf-pro-display-cufonfonts',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const DottedLine(
                          dashColor: Colors.black26,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, left: 15, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Your Payment',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: 'sf-pro-display-cufonfonts',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14),
                                  ),
                                  Text(
                                    '\$175.25',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: 'sf-pro-display-cufonfonts',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15, left: 20),
                              child: const Text(
                                'This job was towards you expectations you received guaranteed Good Service',
                                style: TextStyle(
                                    color: Colors.black26,
                                    fontFamily: 'sf-pro-display-cufonfonts',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );


  }
}
