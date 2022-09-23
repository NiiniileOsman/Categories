// import 'package:camera/screens/card_details.dart';
// import 'package:camera/screens/segested.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:nike_ui_design/componets/card_details.dart';
import 'package:nike_ui_design/componets/segested.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List getLists = [
    ['Camera', 'images/camera.png', true],
    ['Battery', 'images/btr.png', false],
    ['Flash', 'images/fl.png', false],
    ['Camera', 'images/camera.png', false],
  ];

  List getProdeucts = [
    ['Canon', 'images/kamera-canon-fon-3237.jpg'],
    ['Nikon', 'images/images (1).jpg'],
    ['FujiFilm', 'images/c2.jpg'],
    ['Sony', 'images/sony.jpg'],
    ['Lumix', 'images/lumi.jpg'],
    ['Pentax', 'images/61Ibd4VPe2L._AC_SL1000_.jpg'],
  ];

  void Tapted(int index) {
    setState(() {
      for (int i = 0; i < getLists.length; i++) {
        getLists[i][2] = false;
      }
      getLists[index][2] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 25, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              IconlyLight.search,
              size: 20,
              //color: Colors.black87,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              //color: Colors.black87,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            height: 36,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: getLists.length,
                itemBuilder: (_, index) {
                  return SugestedLists(
                    onTap: () => Tapted(index),
                    name: getLists[index][0],
                    img: getLists[index][1],
                    isTapted: getLists[index][2],
                  );
                }),
          ),
          const SizedBox(height: 20),
          Expanded(
            // height: h,
            child: Container(
              // color: Colors.red,
              margin: EdgeInsets.all(15),
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  mainAxisExtent: 200,
                ),
                itemCount: getProdeucts.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardDetails(
                    txt: getProdeucts[index][0],
                    img: getProdeucts[index][1],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
