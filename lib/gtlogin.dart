import 'package:flutter/material.dart';
class fdf extends StatelessWidget {
  const fdf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("GT")),
      ),
      body:Column(
        children: [SizedBox(height: 20,),
          Center(
            child: Container(
              height: 500,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage("assets/background.jpg"),
                fit: BoxFit.fill),
              ),
              child: Column(
                children: [SizedBox(height: 20,),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(70),
                      image: DecorationImage(
                          image: AssetImage("assets/Gt.jpg"),
                      fit: BoxFit.fill),
                    ),
                  ),
                   Column(
                    children: [SizedBox(height:75,),
                      TextFormField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.person),
                            border: InputBorder.none,
                            hintText: "Enter Your Name",
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          )
                        ),
                      ),
                      SizedBox(height: 25,),
                      TextFormField(
                       decoration: InputDecoration(
                         icon: Icon(Icons.key),
                         border: InputBorder.none,
                         hintText: "Password",
                         filled: true,
                         fillColor: Colors.white,
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.red),
                           borderRadius: BorderRadius.circular(20),
                         ),enabledBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.white),
                         borderRadius: BorderRadius.circular(20),
                       )
                       ),
                      ),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){}, child: Text("Login"))
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 300,
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 250,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/sample.jpg"),
                      fit: BoxFit.fill),
                    ),
                  ),
                ),Expanded(
                  child: Text("Welcome to GT sjhfgliyjytsdliy';otifdhtuepoyt';oiygtu6i",
                    style: TextStyle(fontSize:15),
                  textAlign: TextAlign.left,),
                ),
                Container(
                  height: 250,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/paris.jpg"),
                        fit: BoxFit.fill),
                  ),
                )
              ],
            ) ,
          ),
        ],
      ),
    );
  }
}
