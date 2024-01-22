import 'package:flutter/material.dart';
import 'package:gtloginpage/login.dart';

import 'dash.dart';
import 'menu.dart';
class rkm extends StatefulWidget {
  const rkm({super.key});

  @override
  State<rkm> createState() => _rkmState();
}

class _rkmState extends State<rkm> {
  int _index = 0;
  final page = [
    dds(),
    kms(),
  ];
  void onpress(index)
  {
    setState(() {
      _index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.set_meal),label: "profile")
        ],
        currentIndex: _index,
        onTap: onpress,
      ),
    );
  }
}
