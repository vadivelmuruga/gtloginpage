import 'package:flutter/material.dart';
class dgm extends StatefulWidget {
  const dgm({super.key});

  @override
  State<dgm> createState() => _dgmState();
}

class _dgmState extends State<dgm> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.name,
                 textAlign: TextAlign.left,
                  decoration: InputDecoration(
                  errorStyle: TextStyle(fontSize: 15),
                  labelText: "Name",
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                ),
                validator: (name)
                  {
                    if(name == null || name.isEmpty)
                    {
                      return "please Enter the valid Name";
                    }
                  }
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  errorStyle: TextStyle(fontSize: 15),
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                ),
                validator: (password)
                  {
                    if(password == null || password.isEmpty)
                    {
                      return"Please enter password ";
                    }
                    else if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(password))
                      {
                        return"Password should contain Capital, small letter & Number & Special";
                      }
                  }
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  errorStyle: TextStyle(fontSize: 15),
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
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
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  errorStyle: TextStyle(fontSize: 15),
                  labelText: "Phone",
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                ),
                validator: (phone)
                  {
                    if(phone == null || phone.isEmpty)
                    {
                      return "Please Enter Mobile Number";
                    }
                    else if(!RegExp(r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$').hasMatch(phone))
                      {
                        return"Please Enter valid Mobile Number ";
                      }
                  }
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              if(_key.currentState!.validate())
                {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("success")));
                }
            },
                child: Text("Submit",style: TextStyle(fontSize: 20),)),
          ],
        ),
      ),
    );
  }
}


