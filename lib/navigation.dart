
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nike_ui_design/componets/components.dart';
import 'package:nike_ui_design/screens/cart_details.dart';
import 'package:nike_ui_design/screens/home_screen.dart';
class MyStatefulWidget extends StatefulWidget {
  // const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
 final screens = [
    HomeScreen(),
  //  cart_details(color: widget., image: image, Title: Title, subtitle: subtitle, price: price)
    ShoesCard(
        color: Colors.black,
        image: "image",
        Title: "Title",
        subtitle: "subtitle",
        price: "price"),
    ShoesCard(
        color: Colors.black,
        image: "image",
        Title: "Title",
        subtitle: "subtitle",
        price: "price"),
    ShoesCard(
        color: Colors.black,
        image: "image",
        Title: "Title",
        subtitle: "subtitle",
        price: "price"),
  ];
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.grey,),
            label: 'Home',
              activeIcon: Icon(Icons.home,color: Colors.black,),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.basketShopping,color: Colors.grey,),
            label: 'Business',
              activeIcon: Icon(FontAwesomeIcons.basketShopping,color: Colors.black,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,color: Colors.grey,),
            label: 'Business',
            activeIcon: Icon(Icons.favorite,color: Colors.black,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.grey,),
            label: 'School',
            activeIcon: Icon(Icons.person,color: Colors.black,),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow,
        
        onTap: _onItemTapped,
      ),
    );
  }
}
