import 'package:flutter/cupertino.dart';
import 'package:quiz/Models/homepagemodel.dart';
import 'package:quiz/Services/homepageservices.dart';

class homepageprovider extends ChangeNotifier
{
  homepagemodel? data;
  getdata() async
  {
    data=await homepageservices.getdata();
    notifyListeners();
  }
  int calc()
  {
    int sum=0;
    for(int i=0;i<3;i++)
  {
    sum+=i;
    notifyListeners();
  }
    return sum;
}
}