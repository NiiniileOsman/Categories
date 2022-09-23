import 'package:flutter/material.dart';

class SugestedLists extends StatelessWidget {
  const SugestedLists({
    Key? key,
    required this.name,
    required this.img,
    required this.onTap,
    required this.isTapted,
  }) : super(key: key);

  final String name;
  final String img;
  final VoidCallback onTap;
  final bool isTapted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(left: 0),
            height: 35,
            width: 120,
            decoration: BoxDecoration(
              boxShadow: isTapted?kElevationToShadow[2]:kElevationToShadow[0],
               
            
              borderRadius: BorderRadius.circular(8),
              color: isTapted ? Colors.white : Colors.grey.shade200,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  img,
                  color: isTapted ? Colors.black : Colors.grey,
                ),
                const SizedBox(width: 10),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 14,
                    color: isTapted ? Colors.black : Colors.grey,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
