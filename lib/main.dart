import 'package:flutter/material.dart';
import 'package:nike_ui_design/navigation.dart';
import 'package:nike_ui_design/screens/cart_details.dart';
import 'package:nike_ui_design/screens/categories.dart';
import 'package:nike_ui_design/screens/home_screen.dart';


void main() {
  runApp( NikeUI());
}

class NikeUI extends StatelessWidget {
  // const NikeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike UI App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      // home: MyStatefulWidget(),
      home: categories(),
    );
  }
}
