import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/Provider/homepageprovider.dart';
import 'package:quiz/Widgets/homepagewidget.dart';
import 'package:quiz/Widgets/productdetails.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products"),),
      body: Consumer<homepageprovider>(builder: (context, value, child) {
        var prov=value.data;
        if(prov==null)
          {
            value.getdata();
            return CircularProgressIndicator();
          }
        else
          {
            return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)
              , itemBuilder: (context, index) {
        return InkWell(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => productdetails(title:prov.data[index]['name'] ,imageurl:prov.data[index]['image'] ,des: prov.data[index]['description'],),));
        },
        child: homepagewidget(Imageurl: prov.data[index]['image'], Title: prov.data[index]['name'], price: prov.data[index]['price'].toString(),));
        },
            itemCount:value.data!.data.length);
          }
      },),
    );
  }
}
