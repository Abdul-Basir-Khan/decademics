
import 'package:deckademics/student_side_screen/menu_screen_std/course_click/week_screen_std.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Instructor_Side_Screens/Model/course_model.dart';
import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';

class StudentCourseClickStd extends StatefulWidget {
  const StudentCourseClickStd({Key? key}) : super(key: key);

  @override
  State<StudentCourseClickStd> createState() => _StudentCourseClickStdState();
}

class _StudentCourseClickStdState extends State<StudentCourseClickStd> {
  List<CourseModel> imagesList = [
    CourseModel(
        Title: "Novice", Image: "Assets/images/course_click/Picture_1.png"),
    CourseModel(
        Title: "Amateur", Image: "Assets/images/course_click/Picture_2.png"),
    CourseModel(
        Title: "Intermediate",
        Image: "Assets/images/course_click/Picture_3.png"),
    CourseModel(
        Title: "Advance", Image: "Assets/images/course_click/Picture_4.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff212529),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff212529),
        leading: IconButton(
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
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "Assets/icons/course_click/Course.svg",
                  color: Colors.white,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 15,
                ),
                const ReusableText(
                  title: "Course Curriculum ",
                  size: 24,
                  weight: FontWeight.w500,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: imagesList.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WeekScreensStd(
                                  category:
                                  imagesList[index].Title.toString(),
                                )));
                      },
                      child: Container(
                        height: 156,
clipBehavior: Clip.none,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(imagesList[index].Image.toString()),
                          ),
                        ),
                        child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                          Positioned(
                            child: Center(
                              child: Text(
                                imagesList[index].Title.toString(),
                                style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    const SizedBox(height: 10,),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
