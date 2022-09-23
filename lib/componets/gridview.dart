import 'package:flutter/material.dart';

class gridview_widget extends StatelessWidget {
  gridview_widget({
    Key? key,
  }) : super(key: key);

  final List<Map<dynamic, dynamic>> gridMap = [
    {
      "title": "Qaybta Baaburta",
      "price": "2",
      "images": "images/1.png"
      // "https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=725&q=80",
    },
    {
      "title": "Qaybta Tareenka",
      "price": "3",
      "images": "images/2.png"
      // "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    },
    {
      "title": "Qaybta Dabaasha",
      "price": "4",
      "images": "images/1.png"
      // "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Qaybta Xayawaanada",
      "price": "2",
      "images": "images/2.png"
      // "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.green,
      height: size.height * 0.75,
      margin: EdgeInsets.all(20),
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            // mainAxisSpacing: 8.0,
            mainAxisExtent: 200,
          ),
          itemCount: gridMap.length,
          itemBuilder: (_, index) {
            var title = gridMap.elementAt(index)['title'];
            var price = gridMap.elementAt(index)['price'];
            var image = gridMap.elementAt(index)['images'];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    // margin: EdgeInsets.only(left :18,right: 18+),
                    height: size.height * 0.45,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(image),
                            alignment: Alignment.center)),
                  ),
                ),
                Container(
                  height: size.height * 0.03,
                  margin: EdgeInsets.all(8),
                  // color: Colors.white,
                 child: Center(child: Text(title,style: TextStyle(),),),
                ),
              ],
            );
          }),
    );
  }
}
