import 'package:flutter/material.dart';
class jrd extends StatelessWidget {
  const jrd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/paris.jpg"),
              fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                SizedBox(height: 40,),
                Container(
                  height: 500,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(),
                  ),
                  child: Column(
                    children: [SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      image: AssetImage("assets/peacock.jpg"),
                                  fit: BoxFit.fill),
                                ),
                                child: Text("A",
                                style: TextStyle(fontSize: 40,color: Colors.pink),
                                  textAlign:TextAlign.center,),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage("assets/peacock.jpg"),
                                  fit: BoxFit.fill),
                                ),
                                child: Text("B",
                                style: TextStyle(fontSize: 40,color: Colors.pink),
                                  textAlign: TextAlign.center,),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(),
                                  image: DecorationImage(
                                      image: AssetImage("assets/peacock.jpg"),
                                      fit: BoxFit.fill),
                                ),
                                child: Text("C",
                                style: TextStyle(fontSize: 40,color: Colors.pink),
                                  textAlign: TextAlign.center,),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 100,
                                width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage("assets/peacock.jpg"),
                                    fit: BoxFit.fill),
                                  ),
                                child: Text("D",
                                style: TextStyle(fontSize: 40,color: Colors.pink),
                                textAlign: TextAlign.center,),
                              ),
                            ],
                          ),
                          Container(
                            height: 210,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                              image: DecorationImage(
                                  image: AssetImage("assets/tree.jpg"),
                              fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10,),
                             Column(
                               children: [
                                 Container(
                                   height: 100,
                                   width: 240,
                                   decoration: BoxDecoration(
                                     border: Border.all(),
                                     borderRadius: BorderRadius.circular(10),
                                     image: DecorationImage(
                                         image: AssetImage("assets/sample.jpg"),
                                         fit: BoxFit.fill),
                                   ),
                                 ),
                                 SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Container(
                                       height: 100,
                                       width: 110,
                                       decoration: BoxDecoration(
                                         border: Border.all(),
                                         borderRadius: BorderRadius.circular(10),
                                         image: DecorationImage(
                                             image: AssetImage("assets/sunflower.jpg"),
                                         fit: BoxFit.fill),
                                       ),
                                     ),
                                     SizedBox(width: 20,),
                                     Container(
                                       height: 100,
                                       width: 110,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         border: Border.all(),
                                         image: DecorationImage(
                                             image: AssetImage("assets/sunflower.jpg"),
                                             fit: BoxFit.fill),
                                       ),
                                     ),
                                   ],
                                 ),
                               ],
                             ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Text("Welcome to the Gt Sowftware College You learnig Mobile app Development in flutter",
                                style: TextStyle(fontSize: 18),),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 340,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(),
                    color: Colors.white70,
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Container(
                            height: 290,
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
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Container(
                            height: 135,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                              image: DecorationImage(
                                  image: AssetImage("assets/flower.jpg"),
                              fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 135,
                            width: 70,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/flower.jpg"),
                              fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 20,),
                              Container(
                                height: 135,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(),
                                  image: DecorationImage(
                                      image: AssetImage("assets/flower.jpg"),
                                  fit: BoxFit.fill),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                height: 135,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage("assets/flower.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Container(
                            height: 290,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                              image: DecorationImage(
                                  image: AssetImage("assets/tiger.jpg"),
                              fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
