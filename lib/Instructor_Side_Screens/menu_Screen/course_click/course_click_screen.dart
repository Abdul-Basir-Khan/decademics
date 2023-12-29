
import 'package:deckademics/Instructor_Side_Screens/menu_Screen/course_click/week_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Model/course_model.dart';
import '../../login_screen/reusable_text.dart';

class MenuCourseClick extends StatefulWidget {
  const MenuCourseClick({Key? key}) : super(key: key);

  @override
  State<MenuCourseClick> createState() => _MenuCourseClickState();
}

class _MenuCourseClickState extends State<MenuCourseClick> {
  List<CourseModel> ImagesList = [
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
        padding: const EdgeInsets.all(10.0),
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
                  width: 20,
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
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: ImagesList.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeekScreens(
                              category:
                              ImagesList[index].Title.toString(),
                            )));
                  },
                  child: Container(
                    height: 156,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(ImagesList[index].Image.toString()),
                      ),
                    ),
                    child: Stack(children: [
                      Positioned(
                        child: Center(
                          child: Text(
                            ImagesList[index].Title.toString(),
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ]),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
