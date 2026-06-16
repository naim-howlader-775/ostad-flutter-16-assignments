import 'package:flutter/material.dart';
import 'package:of_assignments/screens/details.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Counter Value",style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          Text(number.toString(),style: TextStyle(fontSize: 35,fontWeight: .bold),),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  number++;
                });
              }, child: Text("Increment")),
              SizedBox(width: 10,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(counterValue: number)));
              }, child: Text("Open Details"))
            ],
          )
        ],
      ),
    );
  }
}
