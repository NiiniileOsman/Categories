import 'package:flutter/material.dart';
import 'package:nike_ui_design/componets/search_widget.dart';
import 'package:nike_ui_design/screens/cart_details.dart';

import '../componets/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List items = [
    ['All', true],
    ['Jordan', false],
    ['Running', false],
    ['Golf', false],
    ['Casual', false],
    ['Football', false],
    ['Tines', false],
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
      //bottomNavigationBar: BottomNavigationBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/lo2.jpeg"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nike Collection",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Every thing you need at just one place",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  //fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 15),
              search_widget(),
              // SearchBar(),
              const SizedBox(height: 15),
              Container(
                height: 40,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (_, index) {
                      return ShoesType(
                        text: items[index][0],
                        
                        isSelected: items[index][1],
                        onTap: () {
                          IsSeleted(index);
                        },
                      );
                    }),
              ),
              
              // const SizedBox(height: 15),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>cart_details(color: Color(0xffD6ECF3), image: 'images/2.png', Title: "NiKe Air Running", subtitle: "Best of all in just one place. Find your perfect product only here", price: "139.00")));
                  },
                  child: ShoesCard(color: Color(0xffD6ECF3), image: 'images/2.png', Title: "NiKe Air Running", subtitle: "Best of all in just one place. Find your perfect product only here", price: "139.00")),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (_)=>cart_details(color: Color(0xffEEF3CD), image: 'images/1.png', Title: "NiKe Air Running", subtitle: "Best of all in just one place. Find your perfect product only here", price: "180.00")));
              },
              child: ShoesCard(color: Color(0xffEEF3CD), image: 'images/1.png', Title: "NiKe Air Running", subtitle: "Best of all in just one place. Find your perfect product only here", price: "180.00")),
            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=>cart_details(color: Color(0xffF6E1E5), image: 'images/jac.png', Title: "NiKe Jacket Air Running", subtitle: "Best of all in just one place. Find your perfect product only here", price: "200.00"))),
              child: ShoesCard(color: Color(0xffF6E1E5), image: 'images/jac.png', Title: "NiKe Jacket Air Running", subtitle: "Best of all in just one place. Find your perfect product only here", price: "200.00")),
            ShoesCard(color: Color(0xffD6ECF3), image: 'images/4.png', Title: "NiKe Air Running", subtitle: "Best of all in just one place. Find your perfect product only here", price: "139.00"),
           
      
            ],
          ),
        ),
      ),
    );
  }
}
