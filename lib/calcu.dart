import 'package:flutter/material.dart';
class alm extends StatefulWidget {
  const alm({super.key});

  @override
  State<alm> createState() => _almState();
}

class _almState extends State<alm> {

  final ctrl = TextEditingController();

  String num1="",num2="",optr="";

  bool clk = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        leading: Icon(Icons.calculate),
        backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: Colors.grey,
      body:Column(
        children: [
          SizedBox(height: 100,),
          TextFormField(
            controller: ctrl,
          ),
          SizedBox(height: 100,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){

               if(clk == false)
                 {
                   num2="1";

                   ctrl.text =num2;
                 }
               else
                 {
                   num1="1";

                   ctrl.text =num1;
                 }

              }, child: Text("1")),
              ElevatedButton(onPressed: (){
                if(clk == false)
                {
                  num2="2";

                  ctrl.text =num2;
                }
                else
                {
                  num1="2";

                  ctrl.text =num1;
                }
              }, child: Text("2")),
              ElevatedButton(onPressed: (){
                ctrl.text = "+";
                optr ="+";
                clk = true;
              }, child: Text("+")),
              ElevatedButton(onPressed: (){


                if(optr == "+")
                  {
                    int a = int.parse(num1);
                    int b  = int.parse(num2);


                    int res = a+ b;

                    ctrl.text = res.toString();

                  }

              }, child: Text("=")),

            ],
          )
        ],
      )
      // Column(
      //   children: [
      //     SizedBox(height: 200,),
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: TextField(
      //         controller: text,
      //         textAlign: TextAlign.right,
      //         decoration: InputDecoration(
      //           border: OutlineInputBorder(
      //             borderSide: BorderSide(color: Colors.black),
      //             borderRadius: BorderRadius.circular(8),
      //           ),
      //         ),
      //       ),
      //     ),
      //     SizedBox(height: 30,),
      //     Row(
      //       children: [
      //         SizedBox(width: 30,),
      //         // 7th button
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="7";
      //           });
      //         },
      //             child: Text("7",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="8";
      //           });
      //         },
      //             child: Text("8",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="9";
      //           });
      //         },
      //             child: Text("9",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="*";
      //           });
      //         },
      //             child: Text("*",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //     SizedBox(height: 30,),
      //     Row(
      //       children: [
      //         SizedBox(width: 30,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="4";
      //           });
      //         },
      //             child: Text("4",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="5";
      //           });
      //         },
      //             child: Text("5",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="6";
      //           });
      //         },
      //             child: Text("6",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="-";
      //           });
      //         },
      //             child: Text("-",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //
      //       ],
      //     ),
      //     SizedBox(height: 30,),
      //     Row(
      //       children: [
      //         SizedBox(width: 30,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //            text.text+="1";
      //           });
      //         },
      //             child: Text("1",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="2";
      //           });
      //         },
      //             child: Text("2",style: TextStyle(fontSize: 20),
      //             ),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="3";
      //           });
      //         },
      //             child: Text("3",style: TextStyle(fontSize: 20),),
      //             style: ElevatedButton.styleFrom(
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(8),
      //               ),
      //             ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="+";
      //           });
      //         },
      //             child: Text("+",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //     SizedBox(height: 30,),
      //     Row(
      //       children: [
      //         SizedBox(width: 30,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="c";
      //           });
      //         },
      //             child: Text("c",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="0";
      //           });
      //         },
      //             child: Text("0",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="=";
      //           });
      //         },
      //             child: Text("=",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="/";
      //           });
      //         },
      //             child: Text("/",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
