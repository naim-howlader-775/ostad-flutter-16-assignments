import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:of_assignments/core/constants/app_colors.dart';
class StudentProfileCard extends StatelessWidget {
  const StudentProfileCard({super.key, required this.id,required this.name, required this.department, required this.isNew, required this.isPresent, required this.viewDetails, required this.markAsPresent});
  final String id;
  final String name;
  final String department;
  final bool isNew;
  final bool isPresent;
  final VoidCallback viewDetails;
  final VoidCallback markAsPresent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420.h,
      width: 350.w,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 20,left: 16,right: 16),
          child: Column(
              children: [
                Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/student-profile-1.jpg')
                      ),
                      if(isNew)
                        Positioned(
                          top: 0,
                          right: -20,
                          child: Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(child: Text("New",style: TextStyle(color: Colors.white),)),
                          ),
                        )
                    ]
                ),
                SizedBox(height: 15,),
                Column(
                  spacing: 4,
                  children: [
                    Text(name,style: TextStyle(fontSize: 22,color: AppColors.primary,fontWeight: FontWeight.bold),),
                    Text("Id : $id",style: TextStyle(color: Colors.grey.shade600),),
                    Text(department,style: TextStyle(color: Colors.grey.shade600),)
                  ],
                ),
                SizedBox(height: 30,),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: (){
                        viewDetails();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.info_outline),
                          SizedBox(width: 5,),
                          Text("View Details")
                        ],
                      )
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: (){
                        isPresent ? null : markAsPresent();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: isPresent ? AppColors.secondary : Colors.white,
                          foregroundColor: AppColors.secondary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: Colors.green
                              )
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle_outline, color: isPresent ? Colors.white : AppColors.secondary,),
                          SizedBox(width: 5,),
                          Text(isPresent ? "Present" : "Mark Present",style: TextStyle(color: isPresent ? Colors.white : AppColors.secondary),)
                        ],
                      )
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
}
