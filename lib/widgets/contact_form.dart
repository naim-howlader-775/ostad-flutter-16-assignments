import 'package:flutter/material.dart';
import 'package:of_assignments/core/constants/app_colors.dart';
class ContactForm extends StatelessWidget {
  const ContactForm({super.key,required this.formKey, required this.nameController, required this.phoneController});
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
                hintText: "Enter Name",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey
                    )
                )
            ),
          ),
          SizedBox(height: 10,),
          TextFormField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: "Enter Phone Number",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey
                    )
                )
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text("Add",style: TextStyle(fontSize: 18),)),
          ),
        ],
      ),
    );
  }
}
