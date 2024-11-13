import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/Provider/registrationprovider.dart';
import 'package:quiz/Widgets/loginpage.dart';
import 'package:quiz/pages/homepahe.dart';

class registartionwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var prov=Provider.of<registrationprovider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Register"),),
      body: Form(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child:TextFormField(
                decoration:InputDecoration(labelText: "Username",
                    errorText: prov.erroruser,
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)) ),
                onChanged: (value)
                {
                  prov.username=value;
                },
              ) ,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child:TextFormField(
                decoration:InputDecoration(
                    labelText: "Phonenumber",
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)) ),
                onChanged: (value)
                {
                  prov.phonenumber=value;
                },
              ) ,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child:TextFormField(
                decoration:InputDecoration(labelText: "Email",
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)) ),
                onChanged: (value)
                {
                  prov.email=value;
                },
              ) ,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child:TextFormField(
                decoration:InputDecoration(labelText: "Password",
                    errorText: prov.errorpass,
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)) ),
                onChanged: (value)
                {
                  prov.password=value;
                },
              ) ,
            ),
            Container(margin: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: () {
                prov.Check();
                if(prov.valid==true)
                  {
                    prov.addData(usernamee: prov.username, phonee: prov.phonenumber, emaill: prov.email, passwordd: prov.password);
                     if(prov.data?.status==true)
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => homepage(),));
                      }
                  }
                else
                  {
                    throw Exception("error at adding data");
                  }
              }, child: Text("Sign up")),
            ),
            Container(margin: EdgeInsets.all(10),
              child: InkWell(
                child: Text("Already have an account"),
                onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>loginwidget() ,)),
              ),
            )
          ],
        ),
      ),
    ) ;
  }
}
