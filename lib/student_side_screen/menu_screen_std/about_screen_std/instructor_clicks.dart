
import 'package:flutter/material.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';
import '../../../Instructor_Side_Screens/student_profile/student_profile_screen.dart';



class InstructorProfileScreen extends StatefulWidget {
  const InstructorProfileScreen({Key? key}) : super(key: key);

  @override
  State<InstructorProfileScreen> createState() => _InstructorProfileScreenState();
}

class _InstructorProfileScreenState extends State<InstructorProfileScreen> {
  String selectedValue = "Amateur";
  List<StdImageModel> stdImage = [
    StdImageModel(image: "Assets/images/student_profile/insta.png"),
    StdImageModel(image: "Assets/images/student_profile/twitter.png"),
    StdImageModel(image: "Assets/images/student_profile/facebook.png"),
    StdImageModel(image: "Assets/images/student_profile/email.png"),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff212529),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff212529),
          leading:  IconButton(
            color: const Color(0xffFFFFFF),
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              const Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                          "Assets/images/std_instructor/Ellipse 3.png"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ReusableText(
                      title: "DJ Dezzy Dezz",
                      size: 24,
                      color: Colors.white,
                      weight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ReusableText(
                      title: "Him/He",
                      size: 14,
                      color: Colors.white,
                      weight: FontWeight.w300,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ReusableText(
                      title: "317-709-0011",
                      size: 14,
                      color: Colors.white,
                      weight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48,
                    width: MediaQuery.sizeOf(context).width*0.45,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff0ECCF5),
                    ),
                    child: const Center(
                        child: ReusableText(
                          title: "Call",
                          size: 14,
                          weight: FontWeight.w400,
                          color: Colors.white,
                        )),
                  ),
                  Container(
                    height: 48,
                    width: MediaQuery.sizeOf(context).width*0.45,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff0ECCF5),
                    ),
                    child: const Center(
                        child: ReusableText(
                          title: "Message",
                          size: 14,
                          weight: FontWeight.w400,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    4,
                        (index) => Container(
                      height: 40,
                      width: 40,
                      margin: const EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                stdImage[index].image.toString())),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const ReusableText(title: "About Me",size: 14,weight: FontWeight.w500,color: Colors.white,),
              const  SizedBox(height: 15,),
              const ReusableText(title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Nec etiam quisque diam vitae lobortis cras. Nunc proin\ngravida cursus quis in amet. Cum ac, adipiscing sem\nvolutpat. At elementum, id id bibendum Read More...",size: 14,weight: FontWeight.w400,color: Colors.white,),
              const  SizedBox(height: 20,),

              const ReusableText(title: "What Made You Want To Learn How To DJ?",size: 14,weight: FontWeight.w500,color: Colors.white,),
              const  SizedBox(height: 10,),
              const ReusableText(title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nNec etiam quisque diam vitae lobortis cras. Nunc proin\ngravida cursus quis in amet. Cum ac, adipiscing sem\nvolutpat. At elementum, id id bibendum Read More...",size: 14,weight: FontWeight.w400,color: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}