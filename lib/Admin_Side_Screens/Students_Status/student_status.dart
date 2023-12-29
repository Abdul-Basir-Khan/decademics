import 'package:deckademics/Admin_Side_Screens/Students_Status/all_student.dart';
import 'package:deckademics/Admin_Side_Screens/Students_Status/inactive_status.dart';
import 'package:flutter/material.dart';

import '../../Instructor_Side_constants/reusable_text.dart';
import 'active_student.dart';

class StudentStatus extends StatefulWidget {
  const StudentStatus({Key? key}) : super(key: key);

  @override
  State<StudentStatus> createState() => _StudentStatusState();
}

class _StudentStatusState extends State<StudentStatus> {
  bool _isVisible = false;
  bool _isVisible1 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: DefaultTabController(
      length: 3,
      child: Scaffold(



        backgroundColor: const Color(0xff212529),
        appBar: AppBar(
          elevation:0,
          backgroundColor:const Color(0xff212529),
          title: Visibility(
            visible: _isVisible,
            child: const TextField(
              decoration: InputDecoration(
                filled: true,
               fillColor: Color(0xff212529),
               hintStyle: TextStyle(
                 color: Color(0xffF5F5F7),
                 fontSize: 18
               ),
               hintText: 'Search for student',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff353B41)
                  )
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Color(0xff353B41)
                  )
                )
              ),
            ),
          ),
          leading: IconButton(
            color: const Color(0xffFFFFFF),
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(icon: Visibility(
                visible: _isVisible1,
                child: const Icon(Icons.search,color: Color(0xffFFFFFF),)),onPressed: (){
              setState(() {
                _isVisible=!_isVisible;
                _isVisible1=!_isVisible1;
              });
            },)
          ],
        ),

        body: ListView(
          children: [
            const SizedBox(height: 30,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Icon(Icons.groups_2_outlined,color: Colors.white,),
                SizedBox(width: 15,),
                ReusableTextByH(title: "Student Status",size:24,weight: FontWeight.w400,color: Colors.white,)
              ],
            ),
            const SizedBox(height: 62,),
            const TabBar(
              padding: EdgeInsets.symmetric(horizontal: 75),
                unselectedLabelColor: Color(0xffE5E5E5),
                labelColor: Color(0xffFFFFFF),
                indicatorColor: Colors.transparent,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w600
                ),
                tabs: [
              Tab(text: 'All',),
                  Tab(text: 'Active',),
                  Tab(text: 'Inactive',)
            ]),
            const SizedBox(height: 10,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.7,
              child:  const TabBarView(children: [
               AllStudents(),
                ActiveStudents(),
               InActiveStudents(),
              ]),
            )

          ],
        ),
      ),
    ));
  }
}
