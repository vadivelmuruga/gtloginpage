import 'package:flutter/material.dart';
import 'package:gtloginpage/home.dart';
class fds extends StatefulWidget {
  const fds({super.key});

  @override
  State<fds> createState() => _fdsState();
}

class _fdsState extends State<fds> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/sunlight.jpg"),
            fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              SizedBox(height: 330,),
              Container(
                height: 100,
                width: 350,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    errorStyle: TextStyle(fontSize: 15),
                    hintText: "Enter Your Email",
                    hintStyle: TextStyle(color: Colors.pink),
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 15,color: Colors.black),
                    prefixIcon: Icon(Icons.mail,color: Colors.black,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (email)
                    {
                      if(email == null || email.isEmpty)
                      {
                        return("Please Enter the email");
                      }
                      else if(!RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(email))
                      {
                        return"Email address is not valid";
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
                    hintStyle: TextStyle(color: Colors.pink),
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 15,color: Colors.black),
                    prefixIcon: Icon(Icons.password,color: Colors.black,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (password)
                    {
                      if(password == null || password.isEmpty)
                        {
                          return("Please Enter Password");
                        }
                      else if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(password))
                        {
                          return"Password should contain Capital, small letter & Number & Special";
                        }
                    }
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                if (_key.currentState!.validate())
                  
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => rkm()));
                // if (_key.currentState!.validate())
                //   {
                //     ScaffoldMessenger.of(context).showSnackBar(
                //         SnackBar(content: Text("Success",style: TextStyle(fontSize: 25),)));
                //   }
              }, child: Text("Login",style: TextStyle(fontSize: 20),))
            ],
          ),
        ),
      ),
    );
  }
}
