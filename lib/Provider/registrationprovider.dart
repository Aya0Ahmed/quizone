import 'package:flutter/material.dart';
import 'package:quiz/Models/loginmodel.dart';
import 'package:quiz/Services/Registrationservices.dart';

class registrationprovider extends ChangeNotifier
{
  ///
  /// ////
  late String username;
  late String email;
  late String password;
  late String phonenumber;

  String? errorphone;
  String? erroruser;
  String? errorpass;
  bool valid=false;
  loginmodel? data;
   addData({required String usernamee,required String phonee,required String emaill,required String passwordd}) async
  {
    await registrationrservices.addDataregist(username: usernamee, phone: phonee, email: emaill, password: passwordd);
    notifyListeners();
  }
  Check()
  {
    if(username.isEmpty||username.length<5)
      {
        valid=false;
        erroruser="Check username";
        notifyListeners();
      }
    else if(phonenumber.length>11)
      {
        errorphone="Check the phone number length";
        erroruser="";
        valid=false;
        notifyListeners();
      }
    else if(password.isEmpty||password.length<6)
      {
        valid=false;
        errorphone="";
        errorpass="Check password validations";
        notifyListeners();
      }
    else
      {
        errorphone="";
        erroruser="";
        errorpass="";
        valid=true;
        notifyListeners();
      }
    notifyListeners();
  }
}