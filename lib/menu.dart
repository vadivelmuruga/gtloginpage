import 'package:flutter/material.dart';
import 'package:gtloginpage/login.dart';

import 'dash.dart';
class kms extends StatefulWidget {
  const kms({super.key});

  @override
  State<kms> createState() => _kmsState();
}

class _kmsState extends State<kms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: GestureDetector(
          onTap: ()
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const dds())
              );
            },
            child: CircleAvatar(
              child: Icon(Icons.arrow_back),
              )),
        title: Center(child: Text("Menu",style: TextStyle(fontSize: 25),)),
      ),
      body: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Report",style: TextStyle(fontSize: 25)),
              )),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.person),
             title: Text("Report 1",textAlign: TextAlign.center,
               style: TextStyle(fontSize: 20),),
              trailing: Icon(Icons.arrow_forward),
              tileColor: Colors.pink,
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.person,),
              title: Text("Report 2",textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),),
              trailing: Icon(Icons.arrow_forward),
              tileColor: Colors.green,
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Help",style: TextStyle(fontSize: 25),),
              )),
          SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: ListTile(
             leading: Icon(Icons.logout),
             title: Text("Logout",textAlign: TextAlign.center,
             style: TextStyle(fontSize: 20),),
             trailing: GestureDetector(
               onTap: ()
                 {
                   Navigator.push(context,
                     MaterialPageRoute(builder: (context)=> fds()),);
                 },
                 child: Icon(Icons.arrow_forward)),
             tileColor: Colors.red,
           ),
         )
        ],
      ),
    );
  }
}
