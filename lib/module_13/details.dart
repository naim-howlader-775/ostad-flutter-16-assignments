import 'package:flutter/material.dart';
class Details extends StatefulWidget {
  const Details({super.key, required this.counterValue});
  final int counterValue;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text("Received counter value",style: TextStyle(fontSize: 16),),
            SizedBox(height: 10,),
            Text(widget.counterValue.toString(),style: TextStyle(fontSize: 35,fontWeight: .bold),),
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
