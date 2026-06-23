import 'package:flutter/material.dart';
import 'package:of_assignments/core/constants/app_colors.dart';
class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
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
