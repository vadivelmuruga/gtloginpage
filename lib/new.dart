import 'package:flutter/material.dart';
class mir extends StatelessWidget {
  const mir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 20,),
          Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
                image: AssetImage("assets/tree.jpg"),
            fit: BoxFit.fill),
          ),
    ),
      ),
          SizedBox(height: 20,),
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
            children: [
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                              image: AssetImage("assets/flower.jpg"),
                          fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        child: Text("ABC",
                          style: TextStyle(fontSize: 18),),
                      )
                    ],
                  ),
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                                image: AssetImage("assets/flower.jpg"),
                            fit: BoxFit.fill),
                          ),
                        ), Container(
                          child: Text("ABC",
                            style: TextStyle(fontSize: 18),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/tiger.jpg"),
                          fit: BoxFit.fill),
                        ),
                      ),SizedBox(height: 30,),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image:AssetImage("assets/tiger.jpg"),
                          fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/tiger.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),SizedBox(height: 30,),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/tiger.jpg"),
                          fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 230,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                      image: DecorationImage(
                          image: AssetImage("assets/dream11.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ),
          SizedBox(height: 15,),
          Container(
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/dream11.png"),
                        fit: BoxFit.fill),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: "Enter Your Name",
                          hintStyle: TextStyle(fontSize: 20),
                          filled: true,
                          fillColor: Colors.grey,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(onPressed: (){},
                      child: Text("Login",
                        style: TextStyle(fontSize: 22),),
                    ),
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
