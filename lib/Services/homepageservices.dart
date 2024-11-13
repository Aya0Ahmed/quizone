import 'package:dio/dio.dart';
import 'package:quiz/Models/homepagemodel.dart';

class homepageservices
{
  static Dio dio=Dio();
  static Future getdata()async
  {
    Response response = await dio.get('https://student.valuxapps.com/api/home');
    if(response.statusCode==200)
    {
      return homepagemodel.FromJson(response.data);
    }
    else
    {
      print("Error happens");
    }
  }
}