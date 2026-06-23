import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:of_assignments/core/constants/app_colors.dart';
class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.name,required this.image,required this.profession, required this.bio, required this.email, required this.phone, required this.isFollowed, required this.viewDetails, required this.toggleFollow});
  final String name;
  final String image;
  final String profession;
  final String bio;
  final String email;
  final String phone;
  final bool isFollowed;
  final VoidCallback viewDetails;
  final VoidCallback toggleFollow;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 480,
      width: 350.w,
      child: Card(
        elevation: 6,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 20,left: 30,right: 30),
          child: Column(
              children: [
                CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(image)
                ),
                SizedBox(height: 15,),
                Text(name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Text(profession,style: TextStyle(color: Colors.grey.shade500,fontSize: 16),),
                SizedBox(height: 10,),
                Text(bio,textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                Divider(color: Colors.grey.shade300,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 10,),
                    Text(email,style: TextStyle(fontSize: 16),)
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10,),
                    Text(phone,style: TextStyle(fontSize: 16),)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                          onPressed: (){
                            toggleFollow();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: isFollowed ? Colors.red : AppColors.primary,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                              )
                          ),
                          child: Text(isFollowed ? "Unfollow" : "Follow",style: TextStyle(color: Colors.white),)
                      ),
                    ),
                    SizedBox(width: 15,),
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                          onPressed: (){
                            viewDetails();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.black
                                )
                              )
                          ),
                          child: Text("View Details",style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  ],
                )
              ]
          ),
        ),
      ),
    );
  }
}
