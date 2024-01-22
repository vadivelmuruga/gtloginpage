import 'package:flutter/material.dart';
class font extends StatelessWidget {
  const font({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text("சரண் ",
              style: TextStyle(
                color: Colors.redAccent,fontSize: 50,fontWeight: FontWeight.bold
              ),
            ),
          ),
          Text("சரண் ",
            style: TextStyle(
              color: Colors.redAccent,fontSize: 50,fontFamily:'Tamil',
            ),
          ),
        ],
      ),
    );
  }
}
