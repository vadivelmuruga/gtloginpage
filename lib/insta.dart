import 'package:flutter/material.dart';

import 'amazon.dart';
import 'amz home.dart';
class ins extends StatefulWidget {
  const ins({super.key});

  @override
  State<ins> createState() => _insState();
}

class _insState extends State<ins> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:DefaultTabController(
          length: 2,
            child: NestedScrollView(
                headerSliverBuilder: (BuildContext context ,bool innerBoxIsScrolled)
                {
                  return[
                    SliverAppBar(
                      expandedHeight: 450,
                      leading: GestureDetector(
                        onTap: ()
                          {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (Context)=>rkr())
                            );
                          },
                          child: Icon(Icons.arrow_back)),
                      pinned: true,
                      title: Text("chennaiipl",
                        style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      actions: [
                        Icon(Icons.notifications_active),
                        SizedBox(width: 20,),
                        Icon(Icons.more_vert)
                      ],
                      backgroundColor: Colors.white,
                      flexibleSpace:FlexibleSpaceBar(
                        background: Column(
                          children: [
                            SizedBox(height: 70,),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        image: DecorationImage(
                                            image: AssetImage("assets/chennaiipl.jpg"),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("Chennai Super Kings",
                                        style: TextStyle(fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text("100K",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,fontSize: 15),
                                        ),
                                        Text("Posts",
                                          style: TextStyle(fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 15,),
                                    Column(
                                      children: [
                                        Text("100M",
                                          style: TextStyle(fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("Followers",
                                          style: TextStyle(fontWeight:
                                          FontWeight.bold,fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 15,),
                                    Column(
                                      children: [
                                        Text("227",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Text("Following",
                                          style: TextStyle(fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 40,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 125,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text("Following",
                                        style: TextStyle(fontSize: 14,
                                            color: Colors.black,fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Container(
                                    height: 40,
                                    width: 125,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text("Message",
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                        fontSize: 14,color: Colors.black),),
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Container(
                                    height: 40,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child:Icon(Icons.person_add)
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 120,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  itemBuilder: (BuildContext con,index)
                                  {
                                    return Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 80,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              image: DecorationImage(
                                                  image: AssetImage("assets/chennaiipl.jpg"),
                                                  fit: BoxFit.fill),
                                            ),

                                          ),
                                        ),
                                        Text("Highlight",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,fontSize: 15),
                                        ),
                                      ],
                                    );
                                  }
                              ),
                            ),

                          ],
                        ),
                      ),
                      bottom: TabBar(
                          tabs: [
                        Icon(Icons.grid_on_sharp),
                        Icon(Icons.movie_creation),
                        Icon(Icons.perm_contact_cal_sharp),
                      ]
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  children: [
                  Container(
                    height: 300,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                        ),
                        itemBuilder: (context,index)
                        {
                          return Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image:DecorationImage(
                                  image: AssetImage("assets/chennaiipl.jpg"),
                              fit: BoxFit.fill),
                            ),
                          );
                        }
                    ),
                  ),
                    Container(
                      height: 300,
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:3,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                          ),
                          itemBuilder: (context,index)
                          {
                            return Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image:DecorationImage(
                                    image: AssetImage("assets/chennaiipl.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            );
                          }
                      ),
                    ),
                    Container(
                      height: 300,
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:3,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                          ),
                          itemBuilder: (context,index)
                          {
                            return Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image:DecorationImage(
                                    image: AssetImage("assets/chennaiipl.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            );
                          }
                      ),
                    ),
                  ],
                ),
            ),
        ),
      ),
    );
  }
}
