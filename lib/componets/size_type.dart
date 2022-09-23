import 'package:flutter/material.dart';

class size_type extends StatelessWidget {
  const size_type(
      {Key? key,
      required this.text,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  final String text;
  final bool isSelected;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          width: 55,
          height: 80,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: isSelected ? Colors.black : null,
            // borderRadius: BorderRadius.circular(18),
            shape: BoxShape.circle,
            border: Border.all(color:Colors.grey, width: 1.0)
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: isSelected ? Colors.white : Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
