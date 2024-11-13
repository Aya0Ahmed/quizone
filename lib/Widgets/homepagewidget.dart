import 'package:flutter/material.dart';

class homepagewidget extends StatelessWidget {
  String Imageurl;
  String Title;
  String price;
  homepagewidget({required this.Imageurl,required this.Title,required this.price});

  @override
  Widget build(BuildContext context) {
    return  Container(width: 100,
      height: 100,
      child: Column(
          children: [
            Container(
              child: Image.network(Imageurl,height: 90,),
            ),
            Container(
              child:Text(Title) ,
            ),
            Container(
              child: Text(price),
            )
          ],
        ),
    );
  }
}
