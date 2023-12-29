import 'package:deckademics/Instructor_Side_Screens/attendance/reusable_continer.dart';

import 'package:flutter/material.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';



class AttendanceScreenStd extends StatefulWidget {
  const AttendanceScreenStd({Key? key}) : super(key: key);

  @override
  State<AttendanceScreenStd> createState() => _AttendanceScreenStdState();
}

class _AttendanceScreenStdState extends State<AttendanceScreenStd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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


      body: Padding(
      padding:const EdgeInsets.all(20),
      child: ListView(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Icon(Icons.beenhere,color: Colors.white,),
            SizedBox(width: 20,),
            ReusableText(title: "Attendance",size: 24,weight: FontWeight.w500,color: Colors.white,)
          ],
        ),
        const  SizedBox(height: 50,),

         const  ReusableText(title: "November",size: 18,weight: FontWeight.w500,color: Colors.white,),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
            },

              child:const ReusableContainer(Title: "22",TitleOfText: "Here",colorOfContainer: Color(0xffF8D600),)),
          const SizedBox(height: 10,),
          const ReusableContainer(Title: "08",TitleOfText: "Here",colorOfContainer: Color(0xff2ECC40),),
          const SizedBox(height: 10,),
          const ReusableContainer(Title: "15",TitleOfText: "Missed",colorOfContainer: Color(0xffFF4136),),
          const SizedBox(height: 10,),
          const ReusableContainer(Title: "08",TitleOfText: "Missed",colorOfContainer: Color(0xffFF4136),),
          const SizedBox(height: 10,),
          const ReusableContainer(Title: "01",TitleOfText: "Unknown",colorOfContainer: Color(0xff353B41),),
          const SizedBox(height: 10,),
          const  ReusableText(title: "October",size: 18,weight: FontWeight.w500,color: Colors.white,),
          const SizedBox(height: 10,),
          const ReusableContainer(Title: "04",TitleOfText: "Here",colorOfContainer: Color(0xff2ECC40),),

        ],
      ),
    ),
    ),
    );
  }
}
