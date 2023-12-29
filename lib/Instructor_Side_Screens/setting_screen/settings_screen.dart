
import 'package:deckademics/Instructor_Side_Screens/setting_screen/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../login_screen/reusable_text.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

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
        padding: const EdgeInsets.all(24.0),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const  ReusableText(title: "Notifications",size:18 ,weight:FontWeight.w400 ,color: Colors.white,),
                   const  Spacer(),
                    FlutterSwitch(
                      activeText: "",
                      inactiveText: "",
                      activeColor: const Color(0xff28B463),
                       toggleColor: const Color(0xff212529) ,
                      width: 65.0,
                      height: 25.0,
                      toggleSize: 30.0,
                      value: status,
                      borderRadius: 30.0,
                      showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          status = val;
                        });
                      },
                    ),

                  ],
                ),
               const  ReusableText(title: "General information like updates and school closures etc",size:12,weight:FontWeight.w300 ,color: Colors.white,),
              ],
            ),
          const   SizedBox(height: 30,),
            Row(
              children: [
              const ReusableText(title: "Class Reminder",size:18 ,weight:FontWeight.w400 ,color: Colors.white,),
               const  Spacer(),

                FlutterSwitch(
                  activeText: "",
                  inactiveText: "",
                  activeColor: const Color(0xff28B463),
                  toggleColor: const Color(0xff212529) ,
                  width: 65.0,
                  height: 25.0,
                  toggleSize: 30.0,
                  value: status1,
                  borderRadius: 30.0,
                  showOnOff: true,
                  onToggle: (val) {
                    setState(() {
                      status1 = val;
                    });
                  },
                ),
              ],
            ),

            const   SizedBox(height: 30,),
            InkWell(
                onTap: (){
                  setState(() {
Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResetPassword(  )));

                  });
                },
                child:const ReusableText(title:"Reset Password",size:18 ,weight:FontWeight.w400 ,color: Colors.white,))
          ],
        ),
      ),
    ));
  }
}
