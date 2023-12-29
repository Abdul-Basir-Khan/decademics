
import 'package:flutter/material.dart';

import '../../Instructor_Side_constants/reusable_text.dart';

class CustomRowForStudent extends StatefulWidget {

  final String imagePath;
  final String requiresText;
  final String statusText;
  final Color requiresContainerColor;

  const CustomRowForStudent({Key? key, required this.requiresText, required this.statusText, required this.imagePath, required this.requiresContainerColor}) : super(key: key);

  @override
  State<CustomRowForStudent> createState() => _CustomRowForStudentState();
}

class _CustomRowForStudentState extends State<CustomRowForStudent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage(widget.imagePath)),
              const SizedBox(width: 20,),
              ReusableTextByH(title:widget.requiresText,size:16,weight: FontWeight.w400,color: Colors.white,),
              const Spacer(),
              Container(
                height: 26,width: 86,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: widget.requiresContainerColor,
                ),
                child: Center(
                  child:ReusableTextByH(title:widget.statusText,size:12,weight: FontWeight.w400,color: Colors.white,) ,
                ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          const Divider(thickness: 2,height: 2,color: Color(0xff353B41),),
        ],
      ),
    );
  }
}
