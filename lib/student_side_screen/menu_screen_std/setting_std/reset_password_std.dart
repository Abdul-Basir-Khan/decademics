
import 'package:deckademics/Instructor_Side_Screens/setting_screen/reset_password_check_mail.dart';
import 'package:deckademics/student_side_screen/menu_screen_std/setting_std/reset_password_check_mail_std.dart';
import 'package:flutter/material.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';



class ResetPasswordStd extends StatefulWidget {
  const ResetPasswordStd({Key? key}) : super(key: key);

  @override
  State<ResetPasswordStd> createState() => _ResetPasswordStdState();
}

class _ResetPasswordStdState extends State<ResetPasswordStd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:const Color(0xff212529),
        appBar: AppBar(
          elevation: 0,
          backgroundColor:const Color(0xff212529),
          leading: IconButton(

            color:const Color(0xffFFFFFF), onPressed: () { setState(() {

            Navigator.pop(context);
          }); }, icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: [
              const  Center(
                  child: ReusableText(
                    title: "Reset Password",
                    size: 24,
                    weight: FontWeight.w500,
                    color: Colors.white,
                  )),
              const    SizedBox(
                height: 10,
              ),
              const  Center(
                  child: ReusableText(
                    title:
                    "Please enter the email address associated. You \nwill receive an email with instructions on how to\nupdate your password.",
                    size: 14,
                    align: TextAlign.center,
                    weight: FontWeight.w400,
                    color: Colors.white,
                  )),
              const  SizedBox(height: 30,),
              const  ReusableText(title: "Email Address",color: Colors.white,size: 14,weight: FontWeight.w400,),
              const  SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    )
                ),
              ),
              const SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResetPasswordCheckMailStd()));
                  });
                },
                child:
                Container(
                  height: 50,
                  width: 274,
                  decoration: BoxDecoration(
                      color:const  Color(0xffCCCCCC),
                      borderRadius: BorderRadius.circular(22)
                  ),
                  child:const Center(
                    child: ReusableText(title: "Send Instructions",color: Colors.white,weight: FontWeight.w600,size: 16,),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
