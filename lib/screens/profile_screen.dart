import 'package:flutter/material.dart';
import 'package:of_assignments/core/constants/app_colors.dart';
import 'package:of_assignments/widgets/interest_card.dart';
import 'package:of_assignments/widgets/profile_card.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Map<String,dynamic> user1 = {
    "id" : "1",
    "name" : "John Doe",
    "image" : "assets/images/user-profile-1.jpg",
    "profession" : "Flutter Developer",
    "bio" : "Passionate about creating user-friendly and engaing digital experiences",
    "email" : "johndoe@example.com",
    "phone" : "+123 456 7890",
    "isFollowed" : false,
  };
  bool isLoading = true;

  void viewDetails(String name, String email, String phone){
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("User Details",style: TextStyle(fontSize: 20),),
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
                  Icon(Icons.email,color: AppColors.primary,),
                  SizedBox(width: 5,),
                  Text("Email : ",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(email)
                ],
              ),
              Row(
                children: [
                  Icon(Icons.phone,color: AppColors.primary,),
                  SizedBox(width: 5,),
                  Text("Phone : ",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(phone)
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

  void toggleFollow(String id, String name){
    if(id == user1["id"]){
     setState(() {
       user1["isFollowed"] = !user1["isFollowed"];
     });
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: user1["isFollowed"] ? AppColors.primary : Colors.red,
       content: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(user1["isFollowed"] ? "You followed $name" : "You unfollowed $name",style: TextStyle(fontSize: 16),)
         ],
       ),
      )
    );
  }

  List<Map<String,dynamic>> interests = [
    {
      "id": 1,
      "category": "Travel",
      "title": "Exploring new places around the world",
      "image": "assets/images/nature-image-1.jpg"
    },
    {
      "id": 2,
      "category": "Food",
      "title": "Discovering tasty street foods",
      "image": "assets/images/nature-image-3.jpg"
    },
    {
      "id": 3,
      "category": "Photography",
      "title": "Capturing beautiful nature moments",
      "image": "assets/images/nature-image-4.jpg"
    },
    {
      "id": 4,
      "category": "Music",
      "title": "Listening to calming melodies",
      "image": "assets/images/nature-image-2.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text("Profile",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 500,
              ),
              child: Column(
                children: [
                  ProfileCard(name: user1['name'],image: user1["image"],profession: user1['profession'],bio : user1["bio"],email : user1["email"],phone : user1["phone"],viewDetails: ()=>viewDetails( user1["name"], user1["email"],user1["phone"]),isFollowed : user1["isFollowed"], toggleFollow : ()=> toggleFollow(user1["id"],user1["name"])),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey.shade500,)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text("Interests",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Expanded(child: Divider(color: Colors.grey.shade500,)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      mainAxisExtent: 260
                    ),
                    itemBuilder: (context,index){
                      var item = interests[index];
                      return InterestCard(category: item["category"],title: item["title"],image: item["image"],);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
