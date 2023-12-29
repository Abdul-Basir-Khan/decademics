
import 'package:deckademics/student_side_screen/menu_screen_std/about_screen_std/instructor_clicks.dart';

import 'package:flutter/material.dart';

import '../../../Instructor_Side_Screens/Model/course_model.dart';
import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';

class InstructorListScreenStd extends StatefulWidget {
  const InstructorListScreenStd({Key? key}) : super(key: key);

  @override
  State<InstructorListScreenStd> createState() => _InstructorListScreenStdState();
}

class _InstructorListScreenStdState extends State<InstructorListScreenStd> {
  List<CourseModel> ImagesList = [
    CourseModel(
        Title: "DJ MetroGnome", Image: "Assets/images/std_instructor/i1.png"),
    CourseModel(
        Title: "DJ Top Speed", Image: "Assets/images/std_instructor/i2.png"),
    CourseModel(
        Title: "DJ Dezzy Dezz", Image: "Assets/images/std_instructor/i3.png"),
    CourseModel(
        Title: "DJ Stylistic", Image: "Assets/images/std_instructor/i4.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff212529),
        appBar: AppBar(
          elevation: 0,
          backgroundColor:const Color(0xff212529),
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
        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              const  Center(child: ReusableText(title: "Instructors",size:24 ,weight: FontWeight.w500,color: Colors.white,)),
             const SizedBox(height: 30,),

              ListView.builder(
                shrinkWrap: true,
                itemCount: ImagesList.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const InstructorProfileScreen()));
                      });
                    },
                    child: Stack(
                        children:[ Container(
                          width:double.infinity,
                          margin:const EdgeInsets.all(15),
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 125.0),
                                child: Text(
                                  ImagesList[index].Title.toString(),
                                  style: const TextStyle(fontSize:20 ,fontWeight: FontWeight.w400,color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                          Padding(
                            padding:const EdgeInsets.only(left: 14,bottom: 0),
                            child:
                            Image(
                                height: 146,
                                image: AssetImage(
                                    ImagesList[index].Image.toString())),
                          ),
                        ]
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DaysModel {
  String?Title1;
  DaysModel({this.Title1});
}
class TimeModel {
  String?Title2;
  TimeModel({this.Title2});
}
