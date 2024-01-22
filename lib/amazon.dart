import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gtloginpage/plan.dart';
class aws extends StatefulWidget {
  const aws({super.key});

  @override
  State<aws> createState() => _awsState();
}

class _awsState extends State<aws> {
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xff83d9e1),
                  Color(0xff9be4d0)
                ]
            ),
          ),
        ),
        title:Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
             prefixIcon: Icon(Icons.search,),
              hintText: "Search Amazon.in",
              filled: true,
              fillColor: Colors.white,
              suffixIcon: Icon(Icons.camera_alt_outlined),
              border: OutlineInputBorder(
                borderSide: BorderSide(),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
      body:
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 430,
                 decoration: BoxDecoration(
                   gradient: LinearGradient(
                     begin: Alignment.topLeft,
                       end: Alignment.bottomRight,
                       colors: <Color>[
                         Color(0xffb9eaed),
                         Color(0xffc8f0e6),
                       ]
                   ),
                 ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.location_on_outlined,color: Colors.black,),
                      ),
                      SizedBox(width: 5,),
                      Text("Delvering to vadivel-palladam 641 664",
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (BuildContext con,index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                           Container(
                              height: 80,
                              width: 65,
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               image: DecorationImage(
                                   image: AssetImage("assets/mobile1.jpg"),
                                   fit: BoxFit.fill),
                             ),
                            ),
                            Text("Mobiles",
                            style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.bold),),
                          ],
                        ),
                      );
                    }
                  ),
                ),
                CarouselSlider.builder(
                     options: CarouselOptions(
                       height: 250,
                       aspectRatio: 16/9,
                       viewportFraction: 1,
                       enableInfiniteScroll: true,
                       reverse: false,
                       autoPlay: true,
                       autoPlayInterval: Duration(seconds: 3),
                      enlargeCenterPage: true,
                       scrollDirection: Axis.horizontal,
                       onPageChanged:(index,reason){
                         setState(() {
                           currentindex=index;
                         }
                         );
                       }
                     ),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int itemindex,
                      int pageViewIndex)
                    {
                      return Container(
                        height: 250,
                        width: 410,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/bigbillion.jpg"),
                            fit: BoxFit.fill),
                        ),
                      );
                    }
                ),
                  DotsIndicator(
                    dotsCount: 6,
                    position:currentindex.toDouble(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      child: GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => krp()
                              ),
                          );
                        },
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            itemBuilder: (BuildContext con,index)
                            {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text("Watchs",
                                    style: TextStyle(fontSize: 15,
                                    fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    Container(
                                      height: 150,
                                      width: 130,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/watch2.jpg"),
                                        fit: BoxFit.fill),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                        ),
                      ),
                    ),
                  ),
                Align(
                  alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("DEALS FOR YOU",
                      style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold),),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 400,
                    width: double.infinity,
                    child: GridView.builder(
                      shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,

                       ),
                    itemCount: 4,
                    itemBuilder: (context,index)
                    {
                      return Column(
                        children: [
                          SizedBox(width: 10,),
                          Container(
                            height: 150,
                            width: 180,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/headphone 1.jpg"),
                              fit: BoxFit.fill),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  height: 25,
                                  width: 58,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color(0xffb01a3c),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Center(
                                    child: Text("20% off",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Container(
                                  child: Text("Headphones",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                  color: Color(0xffb01a3c)),),
                                ),
                              )
                            ],
                          ),
                        ],
                      );
                    },
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
