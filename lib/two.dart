import 'package:flutter/material.dart';
import 'package:project2/abc.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
      children: [ ListView.builder(
          itemCount: first.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing:  Text(abc[index]),
                title: Text(first[index]));
                
          }
          
          ),
         Padding(
           padding: const EdgeInsets.only(left: 140,top: 200),
           child: ElevatedButton(onPressed: (){            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  third()),
              );}, child: Text("goooooo")),
         ) 
          ],
    )
          
          );
  }
}
final List first =["hello","good"];
List abc =["mnbv","dgyuj"];