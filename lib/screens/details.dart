import 'package:flutter/material.dart';
class Details extends StatelessWidget {
  const Details({super.key, required this.counterValue});
  final int counterValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Received counter value",style: TextStyle(fontSize: 16),),
            SizedBox(height: 10,),
            Text(counterValue.toString(),style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Back")),
          ],
        ),
      ),
    );
  }
}
