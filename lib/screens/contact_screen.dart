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

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    phoneController.dispose();
  }

  final List<Map<String, String>> contacts = [
    {"name": "Aminul Islam", "phone": "01712345678"},
    {"name": "Rahim Uddin", "phone": "01823456789"},
    {"name": "Karim Ahmed", "phone": "01934567890"},
    {"name": "Sadia Akter", "phone": "01645678901"},
    {"name": "Nusrat Jahan", "phone": "01556789012"},
    {"name": "Imran Hossain", "phone": "01767890123"},
    {"name": "Tanvir Hasan", "phone": "01878901234"},
    {"name": "Jannat Ara", "phone": "01989012345"},
    {"name": "Sabbir Rahman", "phone": "01690123456"},
    {"name": "Mehedi Hasan", "phone": "01501234567"},
  ];
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
            ContactForm(formKey: formKey,nameController: nameController,phoneController: phoneController,),
            SizedBox(height: 20,),
            ContactList(contacts: contacts,),
          ],
        ),
      ),
    );
  }
}
