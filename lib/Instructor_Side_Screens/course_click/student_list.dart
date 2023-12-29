

import 'package:deckademics/Instructor_Side_Screens/course_click/search_bar.dart';

import 'package:flutter/material.dart';

import '../Model/course_model.dart';
import '../login_screen/reusable_text.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({Key? key}) : super(key: key);

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  List<CourseModel> ImagesList = [
    CourseModel(
        Title: "Haylie Dokidis", Image: "Assets/images/course_click/Amateur_1.png"),
    CourseModel(
        Title: "Jaydon Korsgaard", Image: "Assets/images/course_click/Amateur_2.png"),
    CourseModel(
        Title: "Jocelyn Rosser", Image: "Assets/images/course_click/Amateur_3.png"),
    CourseModel(
        Title: "Lindsey Mango", Image: "Assets/images/course_click/Amateur_4.png"),
  ];

  List<DaysModel> DaysTitle = [
    DaysModel(Title1:"M" ),
    DaysModel(Title1:"T" ),
    DaysModel(Title1:"W" ),
    DaysModel(Title1:"T" ),
    DaysModel(Title1:"F" ),
    DaysModel(Title1:"S" ),
  ];
  List<TimeModel> TimeTitle = [
    TimeModel(Title2:"3:30 PM" ),
    TimeModel(Title2:"5:30 PM" ),
    TimeModel(Title2:"7:30 PM" ),
  ];

  int unselectedColor = 0;
  int unselectedColorTime = 0;

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
          title: Row(
            children: [
             const  Spacer(),
              IconButton(
               icon: const Icon( Icons.search,color: Colors.white), onPressed: () {
                 setState(() {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchBarScreen()));
                 });
              },),
            ],
          ),
        ),
          body:Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                const  Center(child: ReusableText(title: "Amateur",size:24 ,weight: FontWeight.w500,color: Colors.white,)),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: ImagesList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){
                        setState((){
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                              backgroundColor:const Color(0xff353B41),
                              context: context, builder: (BuildContext context){
                            return StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) {
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(width: 70,height: 3,color: Colors.white,),
                                        const SizedBox(width: 10,),
                                        const Icon(Icons.filter_list_outlined,color: Colors.white,),
                                        const  SizedBox(width: 10,),
                                        Container(width: 70,height: 3,color: Colors.white,),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    const Center(child:ReusableText(title: "Filter By Day & Time",size: 14,weight: FontWeight.w400,color: Colors.white,),),
                                    const SizedBox(height: 10,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ... List.generate(
                                          DaysTitle.length, (index) => Expanded(
                                          child: InkWell(
                                            onTap: (){
                                              setState(() {
                                                unselectedColor=index;
                                              });
                                            },
                                            child: Container(
                                              height: 56,
                                              width: 56,
                                              margin: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                color: unselectedColor==index?const Color(0xff28B463):const Color(0xff353B41) ,
                                                borderRadius: BorderRadius.circular(5),
                                                boxShadow:   [
                                                  BoxShadow(
                                                    color: Colors.black45.withOpacity(0.1),
                                                    blurRadius: 3.0,
                                                    spreadRadius: 3.0,
                                                  ), //BoxShadow
                                                ],
                                              ),
                                              child: Center(child: Text(DaysTitle[index].Title1.toString(),style:const TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),)),
                                            ),
                                          ),
                                        ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ... List.generate(
                                          TimeTitle.length, (index) => Expanded(
                                          child: InkWell(
                                            onTap: (){
                                              setState((){
                                                unselectedColorTime=index;
                                              });
                                            },
                                            child: Container(
                                              height: 56,
                                              width: 56,
                                              margin: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                color:unselectedColorTime==index?const Color(0xff28B463):const Color(0xff353B41) ,
                                                borderRadius: BorderRadius.circular(5),
                                                boxShadow:   [
                                                  BoxShadow(
                                                    color: Colors.black45.withOpacity(0.1),
                                                    blurRadius: 3.0,
                                                    spreadRadius: 3.0,
                                                  ), //BoxShadow
                                                ],
                                              ),
                                              child: Center(child: Text(TimeTitle[index].Title2.toString(),style:const TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),)),
                                            ),
                                          ),
                                        ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 30,),
                                    Container(
                                      padding:const EdgeInsets.all(15),
                                      decoration:BoxDecoration(
                                          color:const Color(0xff28B463),
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      child:const Center(child: ReusableText(title: "Done",size: 18,weight:FontWeight.w400 ,color: Colors.white,),),
                                    )
                                  ],
                                ),
                              );
                            },);
                          });
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 70,height: 3,color: Colors.white,),
                    const  SizedBox(width: 10,),
                    const Icon(Icons.filter_list_outlined,color: Colors.white,),
                    const SizedBox(width: 10,),
                    Container(width: 70,height: 3,color: Colors.white,),
                  ],
                )
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
