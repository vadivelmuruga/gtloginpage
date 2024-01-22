import 'package:flutter/material.dart';
import 'package:gtloginpage/amz%20home.dart';
import 'package:gtloginpage/insta.dart';
class spo extends StatefulWidget {
  const spo({super.key});

  @override
  State<spo> createState() => _spoState();
}

class _spoState extends State<spo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: NestedScrollView(headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled)
        {
          return [
          SliverAppBar(
           leading: GestureDetector(
             onTap: ()
             {
               Navigator.push(context,
                   MaterialPageRoute(builder: (context)=>rkr())
               );
             },
             child: Icon(Icons.arrow_back,
               color: Colors.black,),
           ),
            pinned: true,
            expandedHeight: 390,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xffa6dae3),
                      Colors.black87,
                    ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
                  FlexibleSpaceBar(
                    title: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text("Vijay Antony Radio",
                          style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.bold),),
                      ],
                    ),background:Column(
                    children: [
                      SizedBox(height:50,),
                      Row(
                        children: [
                          SizedBox(width: 20,height: 20,),
                          Container(
                            height: 45,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Color(0xff677173),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.top,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search,
                                  color: Colors.white,),
                                hintText: "Find in playlist",
                                hintStyle: TextStyle(color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 45,
                            width: 75,
                            decoration: BoxDecoration(
                             color: Color(0xff677173),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text("Sort",
                                style:TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15) ,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage("assets/spoti antony.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("With D.Imman,Kamal Haasan,Vijay and more",
                          style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color:Colors.white),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: Container(
                              height:30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/spoti.png"),
                                fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Made for Vadivel",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white,fontSize: 14),),
                          ),
                        ],
                      )
                    ],
                  ) ,
                  ),
                ],
              ),
            ),
          ),
          ];
        },
          body: SingleChildScrollView(
            child: Container(
              height:750,
              color: Color(0xff171716),
              child: Column(
                children: [
                  Row(
                  children: [
                    Container(
                      height: 50,
                      width: 175,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.add_circle_outline_outlined,
                            color: Colors.white,),
                          Icon(Icons.downloading_outlined,
                            color: Colors.white,),
                          Icon(Icons.share,color: Colors.white,),
                          Icon(Icons.more_vert,color: Colors.white,),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: 60,),
                          Icon(Icons.shuffle,color: Colors.green,),
                          SizedBox(width: 40,),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                              ),
                              shape: BoxShape.rectangle,
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(Icons.play_arrow,color: Colors.black,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                  Container(
                    height: 700,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext con,index)
                        {
                          return
                            ListTile(
                              leading: Container(
                                height: 100,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  image: DecorationImage(
                                      image: AssetImage("assets/flower.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              title:Text("Ussumu Laresey",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white),
                              ),
                              subtitle: Text("LYRICS"
                                  "  Vijay Antony, Emcee Jazz, Jan...",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,color: Colors.white),),
                              trailing: Icon(Icons.more_vert,color: Colors.white,),
                            );
                        }
                    ),
                  ),


                ],
              ),
            ),
          )
          ),
      ),
      );
  }
}
