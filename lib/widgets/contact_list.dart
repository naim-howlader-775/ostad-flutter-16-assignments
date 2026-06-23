import 'package:flutter/material.dart';
class ContactList extends StatelessWidget {
  const ContactList({super.key,required this.contacts});

  final List<Map<String,String>> contacts;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context,index){
          final item = contacts[index];
          return Card(
            child: ListTile(
              leading: Icon(Icons.person,size: 34,),
              title: Text(item["name"]!,style: TextStyle(color: Colors.red,fontSize: 18),),
              subtitle: Text(item["phone"]!,style: TextStyle(color: Colors.grey.shade600,fontSize: 16),),
              trailing: Icon(Icons.phone,color: Colors.blue,size: 35,),
            ),
          );
        },
      ),
    );
  }
}
