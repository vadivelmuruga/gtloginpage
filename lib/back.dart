import 'package:flutter/material.dart';
class gvm extends StatelessWidget {
  const gvm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 915,
            width: 900,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
              fit: BoxFit.fill),
            ),
            child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage("assets/dream11.png"),
                  fit: BoxFit.fill),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                children: [SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 225,
                        width: 170,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/tree.jpg"),
                          fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/flower.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),SizedBox(height: 10,),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("assets/flower.jpg"),
                                  fit: BoxFit.fill),
                            ),
                          )
                  ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Align(alignment: Alignment.centerLeft,),
                      Expanded(child: Text("Welcome to Gt Software College how to you learn in the mobile app devlopment and web devlopment",
                        style: TextStyle(fontSize: 18),),),
                      Container(
                        height: 100,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/paris.jpg"),
                          fit: BoxFit.fill),
                        ),
                      )
                    ],
                  )
                ],
              ),
              ),
              SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container
                    (height: 40,width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        border: InputBorder.none,
                        hintText: "Enter Your Name",
                        hintStyle:  TextStyle(fontSize: 20),
                        filled: true,
                        fillColor: Colors.grey,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),SizedBox(width: 10,height: 70,),
                  ElevatedButton(onPressed: (){}, child: Text("Login",
                    style: TextStyle(fontSize: 20),)),
                ],
              ),
            ],
          ),
          ),

        ],
      ),
    );
  }
}
