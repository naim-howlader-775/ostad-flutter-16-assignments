import 'package:flutter/material.dart';
class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              leading: Icon(Icons.person,size: 34,),
              title: Text("Hasan",style: TextStyle(color: Colors.red,fontSize: 18),),
              subtitle: Text("01800000000",style: TextStyle(color: Colors.grey.shade600,fontSize: 16),),
              trailing: Icon(Icons.phone,color: Colors.blue,size: 35,),
            ),
          );
        },
      ),
    );
  }
}
