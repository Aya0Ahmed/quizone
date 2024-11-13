import 'package:flutter/material.dart';
import 'package:quiz/Models/loginmodel.dart';
import 'package:quiz/Services/Registrationservices.dart';

class loginprovider extends ChangeNotifier
{
  loginmodel? data;
  addData({required String emaill,required String passwordd}) async
  {
    await registrationrservices.addData( email: emaill, password: passwordd);
    notifyListeners();
  }
}