import 'package:flutter/material.dart';

class productdetails extends StatelessWidget {
  String imageurl;
  String title;
  String des;
   productdetails({required this.imageurl,required this.title,required this.des});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("product's data"),),
      body:ListView.builder(itemBuilder: (context, index) {
        return Container(
          child: Column(
            children: [
              Container(
                child: Image.network(imageurl),
              ),
              Container(
                child: Text(title),
              ),
              Container(
                child: Text(des),
              ),
            ],
          ),
        );
      },
        itemCount: 1,
      ) ,
    );
  }
}
