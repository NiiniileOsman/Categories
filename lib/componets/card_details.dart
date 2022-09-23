import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key, required this.txt, required this.img})
      : super(key: key);
  final String txt;

  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            //margin: EdgeInsets.only(bottom: 20),
            height: 150,
            width: 170,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
              color: Color(0xff070235),
              borderRadius: BorderRadius.circular(12),
            ),
            // child: Icon(),
          ),
        ),
        const SizedBox(height: 10),
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
