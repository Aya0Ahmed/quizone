import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/Provider/homepageprovider.dart';
import 'package:quiz/Provider/loginprovider.dart';
import 'package:quiz/Provider/registrationprovider.dart';
import 'package:quiz/pages/Registrationpage.dart';
import 'package:quiz/pages/homepahe.dart';

void main()
{
  runApp(home());
}
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => registrationprovider(),),
        ChangeNotifierProvider(create: (context) => homepageprovider(),),
        ChangeNotifierProvider(create: (context) => loginprovider(),)
      ],
      child: MaterialApp(
        home: homepage()
      ),
    );
  }
}
