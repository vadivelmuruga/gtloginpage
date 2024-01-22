import 'package:flutter/material.dart';
class dds extends StatefulWidget {
  const dds({super.key});

  @override
  State<dds> createState() => _ddsState();
}

class _ddsState extends State<dds> {
  final _key =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            SizedBox(height: 30,),
          Center(
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(),
                image: DecorationImage(
                    image: AssetImage("assets/peacock.jpg"),
                fit: BoxFit.fill),
              ),
            ),
          ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/animals.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
