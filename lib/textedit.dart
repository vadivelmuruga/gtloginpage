import 'package:flutter/material.dart';
class ggh extends StatefulWidget {
  const ggh({super.key});

  @override
  State<ggh> createState() => _gghState();
}
class _gghState extends State<ggh> {
  final abc=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.8),
            child: TextField(
              controller: abc,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            setState(() {
              abc.text+="1";
            }
            );
          },
            child: Text("1",style: TextStyle(color: Colors.black),),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              )
            ),
          ),

        ],
      ),
    );
  }
}
