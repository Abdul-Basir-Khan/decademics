
import 'package:deckademics/Instructor_Side_Screens/setting_screen/reset_create_new_password.dart';
import 'package:flutter/material.dart';

import '../login_screen/reusable_text.dart';

class ResetPasswordCheckMail extends StatefulWidget {
  const ResetPasswordCheckMail({Key? key}) : super(key: key);

  @override
  State<ResetPasswordCheckMail> createState() => _ResetPasswordCheckMailState();
}

class _ResetPasswordCheckMailState extends State<ResetPasswordCheckMail> {
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
            const SizedBox(height: 10,),
            const  Center(child: ReusableText(title: "Check Your Email",color: Colors.white,size: 24,weight: FontWeight.w500,),),
            const SizedBox(height: 10,),
            InkWell(
                onTap: (){
                  setState(() {

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResetCreateNewPasswordScreen()));
                  });
                },
                child:const  Center(child: ReusableText(title: "Email recovery instructions have been sent \nto your inbox.",color: Colors.white,size: 16,align: TextAlign.center,weight: FontWeight.w400,),)),
            const Spacer(),
            Row(
              children: [
                RichText(text: const TextSpan(
                    text:  "Didn't get the email. First check your Spam\nfolder to see if it ended up there. If it's not\n there, make sure you've got the right email\nand try sending it again.",style:TextStyle(fontSize:16,fontWeight:FontWeight.w400,color: Colors.white,),
                    children: [
                      TextSpan(
                          text:  "  try sending it again.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff5BCF7F),)
                      )
                    ]
                )),
              ],
            )

          ],
        ),
      ),
    ));
  }
}
