import 'package:deckademics/Admin_Side_Screens/Students_Status/student_status.dart';
import 'package:flutter/material.dart';

import '../../Instructor_Side_constants/reusable_text.dart';
import '../Payment/payment_status.dart';


class AdminControlClick extends StatefulWidget {
  const AdminControlClick({Key? key}) : super(key: key);

  @override
  State<AdminControlClick> createState() => _AdminControlClickState();
}

class _AdminControlClickState extends State<AdminControlClick> {
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



      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Icon(Icons.manage_accounts_outlined,color: Colors.white,),
              SizedBox(width: 15,),
              ReusableTextByH(title: "Admin Controls",size:24,weight: FontWeight.w400,color: Colors.white,)
            ],
          ),
          const SizedBox(height: 94,),
          InkWell(

            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const StudentStatus()));
              });
            },
            child: const Row(
              children:[
                Icon(Icons.groups_2_outlined,color: Colors.white,),
                SizedBox(width: 15,),
                ReusableTextByH(title: "Student Status",size:18,weight: FontWeight.w400,color: Colors.white,)
              ],
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentStatus()));
              });
            },
            child: const Row(
              children:[
                Icon(Icons.payments_outlined,color: Colors.white,),
                SizedBox(width: 15,),
                ReusableTextByH(title: "Payments",size:18,weight: FontWeight.w400,color: Colors.white,)
              ],
            ),
          ),

        ],
    ),
      ),));
  }
}
