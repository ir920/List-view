import 'package:flutter/material.dart';
import 'package:project2/two.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(
      children: [
        Container(width: 50,height: 100,color: Colors.yellow,
        child: Center(child: Text("first")
        ),
        ),
       Container(width: 50,height: 100,color: Colors.green,
        child: Center(child: Text("second")
        ),
        ),  
        Container(width: 50,height: 100,color: Colors.blue,
        child: Center(child: Text("third")
        ),
        ),
        Center(
          child: ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const second()),
            );
          }, child: Text("NEXT")),
        ) 
      ],
      
    ),
    );
  }
}