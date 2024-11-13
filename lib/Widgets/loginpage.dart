import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/Provider/loginprovider.dart';
import 'package:quiz/Widgets/registrationwidgets.dart';
import 'package:quiz/pages/homepahe.dart';

class loginwidget extends StatelessWidget {
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<loginprovider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Form(
          child: Column(
            children: [
              Container(
                child: CircleAvatar(maxRadius: 100,child: Image.network("https://student.valuxapps.com/storage/uploads/banners/1689106904Mzsmc.photo_2023-07-11_23-08-24.png",width: 2000,fit:BoxFit.fitWidth ,scale: 20,),),
              ),
              Container(
                margin:EdgeInsets.all(20) ,
                child: TextFormField(
                  decoration:InputDecoration(labelText: "Email",
                      border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)) ),
                  onChanged: (value)
                  {
                    email=value;
                  },
                ) ,
              ),
              Container(margin: EdgeInsets.all(20),
                child: TextFormField(
                  decoration:InputDecoration(labelText: "Password",
                      border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)) ),
                  onChanged: (value)
                  {
                    password=value;
                  },
                ) ,
              ),
              Container(margin: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: () {
                  provider.addData(emaill: email, passwordd: password);
                  if(provider.data?.status==true)
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => homepage(),));
                  }
                }, child: Text("Login")),
              ),
              Container(margin: EdgeInsets.all(10),
                child: InkWell(
                  child: Text("Doesn't have an account"),
                  onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>registartionwidget() ,)),
                ),
              ),
            ],
          )
      ),
    ) ;
  }
}
