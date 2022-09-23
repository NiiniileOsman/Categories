import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoesCard extends StatelessWidget {
  const ShoesCard({Key? key,required this.color, required this.image, required this.Title, required this.subtitle, required this.price}) : super(key: key);
final Color color;
final image;
final Title;
final subtitle;
final price;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color
        // color: Color(0xffEEF3CD),

        // centerSlice: Rect.fromLTRB(0, 2, 0, 1)
        // centerSlice: Rect.lerp(Rect.zero, Rect.largest, 2)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: ClipRect(
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 155,
                      decoration: BoxDecoration(
                        // color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage(
                            image,
                          ),
                          alignment: Alignment.center,
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Container(
                        //  color: Colors.yellow,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  Row(
                    children: [
                      Container(
                        height: 22,
                        width: 22,
                        margin: EdgeInsets.only(left: 20,top: 20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                        child: Center(child: Icon(Icons.favorite,color: Colors.pink,size: 16,)),
                      ),
                    ],
                  ),
                  ],
                ),
              )),
          Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(20),
                // color: Colors.black,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          child: Text(Title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                          // child: Text("Nike Air Running",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                        overflow: TextOverflow.ellipsis,
                        )),
                      ],
                    ),
                      SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          child:   Text(subtitle,
                          // child:   Text("Best of all in just one place. Find your perfect product only here",
                        style: TextStyle(fontSize: 16,color: Colors.grey.shade400),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        ),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(child: RichText(text: TextSpan(
                          children: [
                            TextSpan(
                              text: "\$",style: GoogleFonts.lobster(fontWeight: FontWeight.w400,fontSize:20,color: Colors.black),
                            ),TextSpan(
                              text: price,style: GoogleFonts.lobster(fontWeight: FontWeight.w400,fontSize:20,color: Colors.black)
                            )
                          ]
                        )),
                        ),
                        Expanded(child: Container(
                          height: 30,
                          margin: EdgeInsets.only(left: 10,right: 10),
                          
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text("Buy",
                            style: TextStyle(fontWeight: FontWeight.w400,fontSize:15,color: Colors.white)
                            ),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ),
        ],
      ),
    );
  }
}
