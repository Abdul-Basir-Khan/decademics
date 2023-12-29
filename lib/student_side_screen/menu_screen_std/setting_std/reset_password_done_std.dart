
import 'package:flutter/material.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';



class ResetPasswordDoneScreenStd extends StatefulWidget {
  const ResetPasswordDoneScreenStd({Key? key}) : super(key: key);

  @override
  State<ResetPasswordDoneScreenStd> createState() => _ResetPasswordDoneScreenStdState();
}

class _ResetPasswordDoneScreenStdState extends State<ResetPasswordDoneScreenStd> {
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
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children:[
              SizedBox(height: 40,),
              SizedBox(
                  height: 120,
                  width: 120,
                  child: Image(image: AssetImage("Assets/images/login_screen/check.png"))),
              SizedBox(height: 10,),
              ReusableText(title: "Password Updated",color: Colors.white,size: 24,),
              SizedBox(height: 180,),
            ],
          ),
        ),
      ),
    ));
  }
}
