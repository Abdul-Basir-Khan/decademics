
import 'package:deckademics/Instructor_Side_Screens/login_screen/reusable_text.dart';
import 'package:flutter/material.dart';

import 'log_in_screen_std.dart';

class CheckEmailDoneScreenStd extends StatefulWidget {
  const CheckEmailDoneScreenStd({Key? key}) : super(key: key);

  @override
  State<CheckEmailDoneScreenStd> createState() => _CheckEmailDoneScreenStdState();
}

class _CheckEmailDoneScreenStdState extends State<CheckEmailDoneScreenStd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xff212529),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const SizedBox(
                  height: 120,
                  width: 120,
                  child: Image(image: AssetImage("Assets/images/login_screen/check.png"))),
              const SizedBox(height: 10,),
              const ReusableText(title: "Password Updated",color: Colors.white,size: 24,),
              const SizedBox(height: 180,),
              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreenStd()));
                  });
                },
                child:
                Container(
                  height: 52,
                  width: 274,
                  decoration: BoxDecoration(
                      color: const Color(0xff5BCF7F),
                      borderRadius: BorderRadius.circular(22)
                  ),
                  child: const Center(
                    child: ReusableText(title: "Back To Login",color: Colors.white,weight: FontWeight.w600,size: 16,),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
