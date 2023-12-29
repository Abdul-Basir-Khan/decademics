
import 'package:deckademics/student_side_screen/menu_screen_std/setting_std/reset_password_std.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';




class SettingScreenStd extends StatefulWidget {
  const SettingScreenStd({Key? key}) : super(key: key);

  @override
  State<SettingScreenStd> createState() => _SettingScreenStdState();
}

class _SettingScreenStdState extends State<SettingScreenStd> {

  bool status = false;
  bool status1 = false;
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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("Assets/icons/menu/setting.svg"),
                const SizedBox(width: 15,),
                const ReusableText(title: "Setting",size:24 ,weight:FontWeight.w500 ,color: Colors.white,)
              ],
            ),
            const  SizedBox(height: 30,),
            InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResetPasswordStd(  )));

                  });
                },
                child:const ReusableText(title:"Reset Password",size:18 ,weight:FontWeight.w400 ,color: Colors.white,))
          ],
        ),
      ),
    ));
  }
}
