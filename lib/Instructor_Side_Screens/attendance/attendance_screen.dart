import 'package:deckademics/Instructor_Side_Screens/attendance/reusable_continer.dart';

import 'package:flutter/material.dart';

import '../login_screen/reusable_text.dart';
import 'attendance_here.dart';


class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
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
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AttendanceMissedScreen()));

              });
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
