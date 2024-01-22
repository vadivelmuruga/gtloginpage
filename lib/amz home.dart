import 'package:flutter/material.dart';
import 'package:gtloginpage/plan.dart';
import 'package:gtloginpage/spotify.dart';

import 'amazon.dart';
import 'insta.dart';
class rkr extends StatefulWidget {
  const rkr({super.key});

  @override
  State<rkr> createState() => _rkrState();
}

class _rkrState extends State<rkr> {
  int _index=0;
  final page =[
    aws(),
    spo(),
    ins()
  ];
  void onpress(index)
  {
    setState(() {
      _index=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note),label: "Spotify"),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Insta"),
        ],
          currentIndex:_index,
        onTap: onpress,
      ),
    );
  }
}
