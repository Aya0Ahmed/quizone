import 'package:dio/dio.dart';
import 'package:quiz/Models/loginmodel.dart';

class registrationrservices
{
  static Dio dio=Dio();
  static Future<loginmodel> addDataregist({required String username,required String phone,required String email,required String password}) async
  {
    Response response=await dio.post('https://student.valuxapps.com/api/register',data: {
  'name':username,
  'phone':phone,
  'email':email,
  'password':password
  });
  if(response.statusCode!>=200&&response.statusCode!<=300)
  {
  print(response.statusCode);
  }
  else
  {
  print("Error ${response.statusCode}");
  }
    print(response.data);
    return loginmodel.FromJson(response.data);
  }
  static Future<loginmodel> addData({required String email,required String password}) async
  {
    Response response=await dio.post('https://student.valuxapps.com/api/login',data: {
      'email':email,
      'password':password
    });
    if(response.statusCode!>=200&&response.statusCode!<=300)
    {
      print(response.statusCode);
    }
    else
    {
      print("Error ${response.statusCode}");
    }
    print(response.data);
    return loginmodel.FromJson(response.data);
  }
}