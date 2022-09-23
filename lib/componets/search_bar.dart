import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12),
          border: InputBorder.none,
          hintText: "Search here",
          hintStyle: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
          suffixIcon: Icon(
            Icons.search,
            size: 35,
          ),
        ),
      ),
    );
  
  }
}
