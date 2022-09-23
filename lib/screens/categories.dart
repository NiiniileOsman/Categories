import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:nike_ui_design/componets/gridview.dart';
import 'package:nike_ui_design/componets/products.dart';

class categories extends StatelessWidget {
  categories({Key? key}) : super(key: key);
  List getProdeucts = [
    ['Aniques', 'images/0c12f25589d34da5580f6f2b4edb5f60.jpg'],
    ['Art', 'images/10866308.jpg'],
    ['Baby', 'images/WhatsApp-Image-2020-07-04-at-4.52.01-PM-300x300.jpeg'],
    ['Books', 'images/images (2).jpg'],
    ['Cameras', 'images/cameras.jpg'],
    ['Phones', 'images/photo-1616353071588-708dcff912e2.jpg'],
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: Icon(
          FontAwesomeIcons.alignLeft,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
            //  IconlyLight.camera,
             Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: size.height * 0.06,
                  width: double.infinity,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: kElevationToShadow[1],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Products",
                        hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                        prefixIcon: Icon(
                          IconlyLight.search,
                          color: Colors.grey,
                          size: 25,
                        ),
                        contentPadding: EdgeInsets.only(top: 15)),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    height: size.height * 0.06,
                    margin: EdgeInsets.only(right: 25, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage("images/edit.png"))),
                    // child: Icon(
                    //   Icons.menu,
                    //   color: Colors.white,
                    // ),
                  ))
            ],
          ),
          // const SizedBox(height: 15),
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
                  // mainAxisExtent: 100,
                ),
                itemCount: getProdeucts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Products(
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
