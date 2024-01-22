import 'package:flutter/material.dart';


class val extends StatefulWidget {
  const val({super.key});

  @override
  State<val> createState() => _valState();
}

class _valState extends State<val> {

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText:"Name",
                  border: OutlineInputBorder(),
                ),
                validator: (value)
                {
                  if(value == null || value.isEmpty)
                    {
                      return "please enter the valid name";
                    }

                },
              ),
            ),
            SizedBox(height: 100,),
            ElevatedButton(
                onPressed: (){
                  if(_key.currentState!.validate())
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("ok success")));
                    }
                },
                child: Text("ok")),
          ],
        ),
      ),

    );
  }
}
