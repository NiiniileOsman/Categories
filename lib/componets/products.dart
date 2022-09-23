// import 'package:challenge_four/screens/destails.dart';
// import 'package:camera/screens/destails.dart';
import 'package:flutter/material.dart';
import 'package:nike_ui_design/componets/destails.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
    required this.txt,
    required this.img,
  }) : super(key: key);

  final String txt;

  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailsScreen(
                  title: txt,
                ),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
              color: Color(0xff070235),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          txt,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
