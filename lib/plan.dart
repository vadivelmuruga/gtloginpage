import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'amazon.dart';
import 'amz home.dart';
class krp extends StatefulWidget {
  const krp({super.key});

  @override
  State<krp> createState() => _krpState();
}

class _krpState extends State<krp> {
  String dropdownvalue = 'Qty: 1';
  var items = [
    'Qty: 1',
    'Qty: 2',
    'Qty: 3',
    'Qty: 4',
  ];
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin:Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xff83d9e1),
                  Color(0xff9be4d0),
                ]
            ),
          ),
        ),
        leading: Container(
          height: 10,
            child: GestureDetector(
              onTap: ()
                {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>rkr()),
                  );
                },
                child: Icon(Icons.arrow_back))),
        title: Container(
          height: 40,
          width: double.infinity,
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search Amazon.in",
              filled: true,
              fillColor: Colors.white,
              suffixIcon: Icon(Icons.camera_alt_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Redux",
                  style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3c7d92)),),
                ),
                SizedBox(width:170,),
                RatingBar.builder(
                  initialRating: 3.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context,_)=> Icon(
                    Icons.star,
                    size: 10,
                    color:Colors.amber ,
                  ),
                  onRatingUpdate: (rating)
                  {
                    print(rating);
                  },
                  itemSize: 20.0,
                ),
                Text("1,200",style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Redux Analog Blue-Grey Dial Men's Watch",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold
                      ),),
              ),
            ),
            Stack(
              children: [
                CarouselSlider.builder(
                options:CarouselOptions(
                  height: 400,
                  aspectRatio: 16/9,
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index,reason){
                    setState(() {
                      currentindex=index;
                    }
                    );
                  }
                ),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int itemindex,
                  int pageViewIndex)
                {
                  return Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      image: DecorationImage(
                          image: AssetImage("assets/watch1.jpg"),
                          fit: BoxFit.fill),
                    ),
                  );
                }
              ),
                Positioned(right: 1,
                    child: Icon(Icons.share)),
    ]
            ),
            DotsIndicator(
                dotsCount: 4,
              position:currentindex.toDouble(),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xffb01a3c),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text("Deal of the Day",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,color: Colors.white),
                      textAlign: TextAlign.center,),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text("-83%",
                      style: TextStyle(

                        fontSize: 30,color: Color(0xffb01a3c)),
                    ),
                  ),
                ),SizedBox(width: 8,),
                Container(
                  child: Text("₹",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,color: Colors.black
                  ),),
                ),
                Container(
                  child: Text("272",
                  style: TextStyle(fontSize:30,color: Colors.black,
                  fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10,height: 5,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text("M.R.P.:",
                      style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.bold,color: Colors.grey),),
                  ),
                ),SizedBox(width: 5,),
                Text("₹1,599",
                  style: TextStyle(fontSize: 15,color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  child: Text("Total:",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text("₹272",
                    style:TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold) ,),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: RichText(
                text: TextSpan(
                text: "FREE dellivery",
                style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3c7d92)),
                  children: [
                    TextSpan(
                      text: " Wednesday, 27 December ",
                      style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "on order dispatched by Amazon over ₹499. Order within",
                      style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: " 21 hrs 32 mins.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff628b51),
                      ),
                    ),
                  ]
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text("Delivering to vadivel 641 664 - Update location",
                      style:TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15,
                          color: Color(0xff3c7d92)),
                        ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                alignment: Alignment.topLeft,
                  child: Text("In stock",
                    style: TextStyle(
                        fontSize:25 ,fontWeight: FontWeight.bold,
                    color: Color(0xff628b51)),
                  ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 20,height: 10,),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,spreadRadius: 1,
                        offset: Offset(5, 5),
                    ),],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: DropdownButton(
                    alignment: Alignment.centerRight,
                    borderRadius: BorderRadius.circular(8),
                    dropdownColor: Color(0xffc4c5c5),
                    value: dropdownvalue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items:items.map((String items)
                          {
                            return DropdownMenuItem(
                              alignment: Alignment.centerLeft,
                                value: items,
                                child:Text(items) );
                          }
                          ).toList(), onChanged: (String? newValue){
                      setState(() {
                        dropdownvalue=newValue!;
                      }
                      );
                  }
                  ),
                ),
              ],
            ),
           SizedBox(height:15,),
           Container(
             height: 45,
             width: 300,
             decoration: BoxDecoration(
               shape: BoxShape.rectangle,
               color: Color(0xffffd814),
               borderRadius: BorderRadius.circular(20),
             ),
             child: Center(
               child: Text("Add to Cart",
                 style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 15,color: Colors.black),
                 textAlign: TextAlign.center,
               ),
             ),
           ),
            SizedBox(height: 10,),
            Container(
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xffffa41c),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text("Buy Now",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                color: Colors.black),textAlign: TextAlign.center,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
