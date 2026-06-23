import 'package:flutter/material.dart';
import 'package:of_assignments/core/constants/app_colors.dart';
import 'package:of_assignments/widgets/contact_form.dart';
import 'package:of_assignments/widgets/contact_list.dart';
class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List",style: TextStyle(color: Colors.white),),
        backgroundColor: AppColors.primary,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            ContactForm(),
            SizedBox(height: 20,),
            ContactList(),
          ],
        ),
      ),
    );
  }
}
