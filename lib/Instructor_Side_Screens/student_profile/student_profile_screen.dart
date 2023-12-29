
import 'package:deckademics/Instructor_Side_Screens/key_screens/key_screen.dart';
import 'package:deckademics/Instructor_Side_Screens/student_profile/what_made_you_want.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../Instructor_Side_constants/reusable_text.dart';
import '../attendance/attendance_screen.dart';
import '../login_screen/reusable_text.dart';
import '../skill_score_notes/skils_score_1.dart';
import 'about_me.dart';



class StudentProfileScreen extends StatefulWidget {
  const StudentProfileScreen({Key? key}) : super(key: key);

  @override
  State<StudentProfileScreen> createState() => _StudentProfileScreenState();
}

class _StudentProfileScreenState extends State<StudentProfileScreen> {
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
  bool _isVisible=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xff212529),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: const Color(0xff212529),
              leading: selectedValue != "Amateur" ? IconButton(
                color: const Color(0xffFFFFFF),
                onPressed: () {
                  setState(() {
                    showDialog(context: context, builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        backgroundColor: const Color(0xff212529),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const ReusableText(title: "Discard Changes",size: 24,weight: FontWeight.w500,color: Colors.white,),
                              const SizedBox(height: 20,),
                              const ReusableText(title: "Are you sure you want to discard your\nchanges? Any unsaved edits will be lost.",size: 14,weight: FontWeight.w400,color: Colors.white,),
                              const  SizedBox(height: 30,),
                              const ReusableText(title: 'Click "Discard" to proceed or "Cancel" to\ngo back and save your changes.',size: 14,weight: FontWeight.w400,color: Colors.white,),
                              const SizedBox(height: 30,),
                              Row(
                                children: [
                                  const Spacer(),
                                  TextButton(onPressed: (){
Navigator.pop(context);

                                  }, child: const ReusableText(title: "Cancel",color: Colors.white,size: 14,weight: FontWeight.w500,)),
                                  const SizedBox(width: 20,),
                                  TextButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> KeyScreen3()));


                                  }, child:const ReusableText(title: "Discard",size: 14,weight: FontWeight.w500,color: Color(0xff28B463),)),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
                  });
                },
                icon: const Icon(Icons.close),
              ) :  IconButton(
                color: const Color(0xffFFFFFF),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),

              actions: [
                selectedValue != "Amateur" ? IconButton(
                  color: const Color(0xffFFFFFF),
                  onPressed: () {

                  },
                  icon: const Icon(Icons.done),
                ) :const SizedBox()
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView(
                children: [
                  Center(
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage(
                              "Assets/images/student_profile/std_profile_1.png"),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SkillScoreScreen()));
                            });
                          },
                          child: const ReusableText(
                            title: "Lindsey Mango",
                            size: 24,
                            color: Colors.white,
                            weight: FontWeight.w500,
                          ),
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
                          height: 15,
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
                   width: MediaQuery.sizeOf(context).width*0.45,
                        padding: const EdgeInsets.symmetric(vertical: 10),
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
                      Spacer(),
                      Container(
                        width: MediaQuery.sizeOf(context).width*0.45,
                        padding: const EdgeInsets.symmetric(vertical: 10),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(
                          4,
                          (index) => Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      stdImage[index].image.toString())),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                 const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircularPercentIndicator(
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
                      InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const AttendanceScreen()));

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
                  const SizedBox(height: 20,),
                  const Center(child: ReusableText(title: "Class Level",size: 16,color: Colors.white,weight: FontWeight.w400,),),
                  const SizedBox(height: 10,),
                  Container(
                    padding:const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(),
                            ReusableTextByH(title:selectedValue,size: 18,weight: FontWeight.w400,color: Colors.black,),
                            const SizedBox(width: 100,),
                            IconButton(onPressed: (){
                              setState(() {
                                _isVisible=!_isVisible;
                              });
                            },
                                icon:_isVisible?const Icon(Icons.keyboard_arrow_up_outlined,color: Colors.black,size: 30,):const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.black,size: 30,)),

                          ],
                        ),
                  ),
               const  SizedBox(height: 10,),
                 Visibility(
                   visible: _isVisible,
                     child: Container(
                       padding: const EdgeInsets.all(10),
                       width: double.infinity,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                       ),
                       child: Column(children: List.generate(dropdownTitle.length, (index) =>  InkWell(
                         onTap: (){
                           setState(() {
                             selectedValue = dropdownTitle[index];
                           });
                         },
                         child: Padding(
                           padding: const EdgeInsets.only(bottom: 7),
                           child: Text(dropdownTitle[index],style: const TextStyle(
                             fontWeight: FontWeight.w300,fontSize: 18,color: Colors.black
                           ),),
                         ),
                       ),),

                       ),
                     ),
                 ),
                 const SizedBox(height: 10,),
                  InkWell(

                      onTap: (){
                        setState(() {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>const AboutMeScreen()));

                        });
                      },

                      child
                      : const ReusableText(title: "About Me",size: 14,weight: FontWeight.w500,color: Colors.white,)),
                const  SizedBox(height: 10,),
                  const ReusableText(title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Nec etiam quisque diam vitae lobortis cras. Nunc proin\ngravida cursus quis in amet. Cum ac, adipiscing sem\nvolutpat. At elementum, id id bibendum Read More...",size: 14,weight: FontWeight.w400,color: Colors.white,),
                  const  SizedBox(height: 10,),

                  InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>const WhatMadeYouWant()));
                        });
                      },


                      child: const ReusableText(title: "What Made You Want To Learn How To DJ?",size: 14,weight: FontWeight.w500,color: Colors.white,)),
                  const  SizedBox(height: 10,),
                  const ReusableText(title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nNec etiam quisque diam vitae lobortis cras. Nunc proin\ngravida cursus quis in amet. Cum ac, adipiscing sem\nvolutpat. At elementum, id id bibendum Read More...",size: 14,weight: FontWeight.w400,color: Colors.white,),
                ],
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