import 'package:flutter/material.dart';
import 'package:of_assignments/core/constants/app_colors.dart';
import 'package:of_assignments/widgets/student_profile_card.dart';
import 'package:of_assignments/widgets/student_profile_shimmer.dart';
class StudentProfileScreen extends StatefulWidget {
  const StudentProfileScreen({super.key});

  @override
  State<StudentProfileScreen> createState() => _StudentProfileScreenState();
}

class _StudentProfileScreenState extends State<StudentProfileScreen> {
  Map<String,dynamic> student1 = {
    "name" : "Mike Rack",
    "id" : "STD-2025-0042",
    "department" : "Computer Science & Engineering",
    "isNew" : true,
    "isPresent" : false,
  };
  bool isLoading = true;

  void viewDetails(String id, String name, String dept){
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Row(
            children: [
              Icon(Icons.school,color: AppColors.primary,),
              SizedBox(width: 5,),
              Text("Student Details",style: TextStyle(fontSize: 20),)
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Row(
                children: [
                  Icon(Icons.person,color: AppColors.primary,),
                  SizedBox(width: 5,),
                  Text("Name : ",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(name)
                ],
              ),
              Row(
                children: [
                  Icon(Icons.shopping_bag,color: AppColors.primary,),
                  SizedBox(width: 5,),
                  Text("ID : ",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(id)
                ],
              ),
              Row(
                children: [
                  Icon(Icons.apartment,color: AppColors.primary,),
                  SizedBox(width: 5,),
                  Text("Dept : ",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(dept)
                ],
              ),
            ],
          ),
          actions: [
            Column(
              children: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Close"))
              ],
            )
          ],
        )
    );
  }

  void markAsPresent(String id, String name){
    if(id == student1["id"]){
     setState(() {
       student1["isPresent"] = true;
     });
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
       content: Row(
         children: [
           Text("$name marked as present"),
           SizedBox(width: 5,),
           Container(
             decoration: BoxDecoration(
               color: Colors.green
             ),
             child: Icon(Icons.check,color: Colors.white,size: 18,),
           )
         ],
       ),
      )
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      setState(() {
        isLoading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text("Student Profile",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 400
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isLoading ? StudentProfileShimmer() : StudentProfileCard(id: student1['id'],name: student1['name'],department: student1['department'],isNew : student1["isNew"],viewDetails: ()=>viewDetails(student1["id"], student1["name"], student1["department"]),isPresent : student1["isPresent"], markAsPresent : ()=> markAsPresent(student1["id"],student1["name"]))
            ],
          ),
        ),
      ),
    );
  }
}
