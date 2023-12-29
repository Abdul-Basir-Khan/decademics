
import 'package:deckademics/student_side_screen/Std_profile_screen/attendance/attendance_screen_std.dart';
import 'package:deckademics/student_side_screen/Std_profile_screen/skills_score_std/skill_score_std.dart';
import 'package:deckademics/student_side_screen/menu_screen_std/menu_screen_std.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../Instructor_Side_Screens/login_screen/reusable_text.dart';
import '../../Instructor_Side_constants/reusable_text.dart';




class StudentProfileScreenStd extends StatefulWidget {
  const StudentProfileScreenStd({Key? key}) : super(key: key);

  @override
  State<StudentProfileScreenStd> createState() => _StudentProfileScreenStdState();
}

class _StudentProfileScreenStdState extends State<StudentProfileScreenStd> {
  String selectedValue = "Amateur";
  List<StdImageModel> stdImage = [
    StdImageModel(image: "Assets/images/student_profile/insta.png"),
    StdImageModel(image: "Assets/images/student_profile/twitter.png"),
    StdImageModel(image: "Assets/images/student_profile/facebook.png"),
    StdImageModel(image: "Assets/images/student_profile/email.png"),
  ];

  final List<String> dropdownTitle  = [
    "Amateur",
    "Novice",
    "Intermediate",
    "Advance"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xff212529),
            body: Padding(
              padding: const EdgeInsets.all( 15.0),
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Center(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const MenuScreenStd()));
                            });

                          },
                          child: const CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage(
                                "Assets/images/student_profile/std_profile_1.png"),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const ReusableText(
                          title: "Lindsey Mango",
                          size: 24,
                          color: Colors.white,
                          weight: FontWeight.w500,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const ReusableText(
                          title: "She/Her",
                          size: 14,
                          color: Colors.white,
                          weight: FontWeight.w300,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(thickness: 2,height: 2,color: Color(0xff353B41),),
                        const SizedBox(
                          height: 10,
                        ),
                        const ReusableText(
                          title: "Stylistic",
                          size: 14,
                          color: Colors.white,
                          weight: FontWeight.w400,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const ReusableText(
                          title: "317-709-0011",
                          size: 14,
                          color: Colors.white,
                          weight: FontWeight.w400,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
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
                 const SizedBox(height: 20,),
                  const Divider(thickness: 2,height: 2,color: Color(0xff353B41),),
                  const SizedBox(
                    height: 20,
                  ),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SkillScoreStd()));
                            });
                          },
                          child: CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 8.0,
                            percent: 0.75,
                            backgroundColor:const Color(0xff212529),
                            center: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ReusableText(title: "75.6",size:29 ,color: Colors.white,weight:FontWeight.w500 ,),
                                ReusableText(title: "Overall Grade",size:14 ,color: Colors.white,weight:FontWeight.w300 ,),
                              ],
                            ),
                            progressColor:const Color(0xffC7FF51),
                          ),
                        ),
                        SizedBox(width: MediaQuery.sizeOf(context).width*0.20,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AttendanceScreenStd()));
                            });
                          },
                          child: CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 8.0,
                            percent: 0.90,
                            backgroundColor:const Color(0xff212529),
                            center: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ReusableText(title: "90.5",size:29 ,color: Colors.white,weight:FontWeight.w500 ,),
                                ReusableText(title: "Attendance",size:14 ,color: Colors.white,weight:FontWeight.w300 ,),
                              ],
                            ),
                            progressColor:const Color(0xff00FF94),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30,),
                  const Center(child: ReusableText(title: "Class Level",size: 16,color: Colors.white,weight: FontWeight.w400,),),
                  const SizedBox(height: 20,),
                  Container(
                    height: 53,
                    padding:const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child:
                  const  Center(child: ReusableTextByH(title:'Intermediate',size: 18,weight: FontWeight.w400,color: Colors.black,alignment: TextAlign.center,)),
                  ),
                 const SizedBox(height: 10,),],
              ),
            ),
        ),
    );
  }
}

class StdImageModel {
  String? image;

  StdImageModel({this.image});
}