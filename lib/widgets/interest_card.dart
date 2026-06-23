import 'package:flutter/material.dart';
import 'package:of_assignments/core/constants/app_colors.dart';
class InterestCard extends StatelessWidget {
  const InterestCard({super.key, required this.category, required this.title, required this.image});

  final String category;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
                child: Image.asset(image)
            ),
            SizedBox(height: 5,),
            Text(category, style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 5,),
            Text(title,style: TextStyle(color: Colors.grey.shade600),maxLines: 1,overflow: TextOverflow.ellipsis,),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
                child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ), child: Text("View More",style: TextStyle(color: AppColors.primary),)))
          ],
        ),
      ),
    );
  }
}
