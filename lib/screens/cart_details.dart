import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:flutter_image_stack/flutter_image_stack.dart';
// import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:nike_ui_design/componets/image_stack.dart';
import 'package:nike_ui_design/componets/size_type.dart';

class cart_details extends StatefulWidget {
  const cart_details(
      {Key? key,
      required this.color,
      required this.image,
      required this.Title,
      required this.subtitle,
      required this.price})
      : super(key: key);
  final Color color;
  final image;
  final Title;
  final subtitle;
  final price;
  @override
  State<cart_details> createState() => _cart_detailsState();
}

class _cart_detailsState extends State<cart_details> {
  final List items = [
    ['35', true],
    ['36', false],
    ['37', false],
    ['38', false],
    ['39', false],
    ['40', false],
    ['41', false],
    ['42', false],
    ['43', false],
    ['44', false],
    // ['4', false],
  ];

  void IsSeleted(int index) {
    setState(() {
      for (int i = 0; i < items.length; i++) {
        items[i][1] = false;
      }
      items[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        left: 25, right: 25, bottom: 20, top: 40),
                    height: 260,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: widget.color),
                    // color: Color(0xffD6ECF3)),
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 22,
                              width: 22,
                              margin:
                                  EdgeInsets.only(left: 20, top: 20, right: 20),
                              decoration: BoxDecoration(),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                                size: 19,
                              ),
                            ),
                          ],
                        )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              width: double.infinity,
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    widget.image,
                                    fit: BoxFit.contain,
                                    width: 200,
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 22,
                              width: 22,
                              margin:
                                  EdgeInsets.only(left: 20, top: 20, right: 20),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.pink,
                                size: 16,
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Expanded(
                    child: Text(
                      widget.Title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 20, top: 5),
              child: Expanded(
                child: Text(
                  widget.subtitle,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w400),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 25, top: 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 237, 187, 6),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "(Avg.Rating)",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    )),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: '\$',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      TextSpan(
                        text: widget.price,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 50),
                  child: Text(
                    "Select Size",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            Container(
              height: 58,
              margin: EdgeInsets.all(20),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (_, index) {
                    return size_type(
                      text: items[index][0],
                      isSelected: items[index][1],
                      onTap: () {
                        IsSeleted(index);
                      },
                    );
                  }),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    // height: 60,
                    margin: EdgeInsets.only(
                        left: 25, right: 25, bottom: 25, top: 7),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        // color: Colors.black,
        child: Column(children: [
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                "Reviews",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Expanded(
                // child: FlutterImageStack(
                //   backgroundColor: Colors.green,
                //   itemBorderColor: Colors.grey,
                //   imageList: const [
                //     'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
                //     'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
                //     'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
                //     'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
                //   ],
                //   // showTotalCount: true,
                //   totalCount: 4,
                //   itemRadius: 200, // Radius of each images
                //   itemCount: 3, // Maximum number of images to be shown in stack
                //   itemBorderWidth: 5, // Border width around the images
                // ),
                child: Stack(clipBehavior: Clip.none, children: [
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width:2,color: Colors.white)),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/lo2.jpeg"),
                    ),
                  ),
                  // SizedBox(width: 20,),
                  Positioned(
                    left: 30,
                    child:  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width:2,color: Colors.white)),
                 
                      child: CircleAvatar(
                        
                        backgroundImage: AssetImage("images/lo2.jpeg"),
                      ),
                    ),
                  ),
                
                  Positioned(
                    left: 60,
                    child:  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width:2,color: Colors.white),
                   
                    ),
                 
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("images/lo2.jpeg"),
                      ),
                    ),
                  ),
                
                  Positioned(
                    left: 80,
                    child:  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width:2,color: Colors.white)),
                 
                      child: CircleAvatar(
                        
                        backgroundImage: AssetImage("images/lo2.jpeg"),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 100,
                    child:  Container(
                      height: 45,
                      width: 45,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,border: Border.all(width:2,color: Colors.white)),
                 
                     child: Center(child: Text("+73",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),)),
                    ),
                  ),
                
                ]),
              ),
              Spacer(),
              Expanded(
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: widget.color,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.basketShopping,
                        size: 20,
                      ),
                      // Spacer(),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        "Add",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
