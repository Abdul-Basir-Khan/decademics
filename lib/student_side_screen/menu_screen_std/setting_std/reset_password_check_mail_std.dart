
import 'package:deckademics/Instructor_Side_Screens/setting_screen/reset_create_new_password.dart';
import 'package:deckademics/student_side_screen/menu_screen_std/setting_std/reset_create_new_password_std.dart';
import 'package:flutter/material.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';



class ResetPasswordCheckMailStd extends StatefulWidget {
  const ResetPasswordCheckMailStd({Key? key}) : super(key: key);

  @override
  State<ResetPasswordCheckMailStd> createState() => _ResetPasswordCheckMailStdState();
}

class _ResetPasswordCheckMailStdState extends State<ResetPasswordCheckMailStd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xff212529),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff212529),
        leading: IconButton(
          color: const Color(0xffFFFFFF), onPressed: () { setState(() {

          Navigator.pop(context);
        }); }, icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(
                height: 120,
                width: 120,
                child: Center(child: Image(image: AssetImage("Assets/images/login_screen/mail.png")))),
            const SizedBox(height: 20,),
            const  Center(child: ReusableText(title: "Check Your Email",color: Colors.white,size: 24,weight: FontWeight.w500,),),
            const SizedBox(height: 30,),
            InkWell(
                onTap: (){
                  setState(() {

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResetCreateNewPasswordScreenStd()));
                  });
                },
                child:const  Center(child: ReusableText(title: "Email recovery instructions have been sent \nto your inbox.",color: Colors.white,size: 16,align: TextAlign.center,weight: FontWeight.w400,),)),
            const Spacer(),
            Center(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                  text:  "Didn't get the email. First check your Spam\nfolder to see if it ended up there. If it's not\nthere, make sure you've got the right email\nand",style:TextStyle(fontSize:16,fontWeight:FontWeight.w400,color: Colors.white,),
                  children: [
                    TextSpan(
                        text:  " try sending it again.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff5BCF7F),)
                    )
                  ]
              )),
            )

          ],
        ),
      ),
    ));
  }
}
