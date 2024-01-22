import 'package:flutter/material.dart';
import 'package:gtloginpage/amazon.dart';

import 'amz home.dart';
class asm extends StatefulWidget {
  const asm({super.key});

  @override
  State<asm> createState() => _asmState();
}

class _asmState extends State<asm> {
  final _key =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key: _key,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/amazon logo.jpg"),
            fit: BoxFit.fill),
          ),child: Column(
          children: [
            SizedBox(height: 250,),
            Container(
              height: 100,
              width: 350,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  errorStyle: TextStyle(fontSize: 15),
                  hintText: "Enter Your Name",
                  hintStyle: TextStyle(color: Colors.green),
                  labelText: "Name",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.black),
                  prefixIcon: Icon(Icons.mail,color: Colors.black,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (email)
                {
                  if(email == null || email.isEmpty)
                    {
                      return("Please Enter Name");
                    }
                }
              ),
            ),
            Container(
              height: 100,
              width: 350,
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  errorStyle: TextStyle(fontSize: 15),
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(color: Colors.green),
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 15,color: Colors.black),
                  prefixIcon: Icon(Icons.password,color: Colors.black,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (password)
                  {
                    if(password == null || password.isEmpty || password.length>6)
                      {
                        return("Please Enter Vaild Password");
                      }
                  }
              ),
            ),
            ElevatedButton(onPressed: (){
              if(_key.currentState!.validate()){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> rkr())
                );
               // ScaffoldMessenger.of(context).showSnackBar(
                 //   SnackBar(content: Text("oh")));
              }
            },
                child: Text("Login",style: TextStyle(fontSize: 20),)),
          ],
        ),
        ),
      ) ,
    );
  }
}
