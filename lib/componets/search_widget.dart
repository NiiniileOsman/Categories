import 'package:flutter/material.dart';
class search_widget extends StatelessWidget {
  const search_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child:Container(
            margin: EdgeInsets.all(8),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffEBEDEE)
              // color: Colors.grey.shade300
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search here",
                hintStyle: TextStyle(
                  fontSize: 18
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 20,top: 15),
                suffixIcon: Icon(Icons.search,size: 30,color: Colors.grey)
              ),
            ),
          ) ),
      ],
    );
  }
}