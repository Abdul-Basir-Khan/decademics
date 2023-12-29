
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Instructor_Side_constants/reusable_text.dart';
import '../about_us/about_us_screen.dart';
import '../login_screen/log_in_screen.dart';
import '../my_profile/my_profile_screen.dart';
import '../notification/notification.dart';
import '../setting_screen/settings_screen.dart';
import 'course_click/course_click_screen.dart';



class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
      child: ListView(
        children:[
          const SizedBox(height: 20,),

          const Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              CircleAvatar(
                radius: 40,
                child: Image(
                  image: AssetImage("Assets/images/key_screen/Ellipse 35.png"),),
              ),
             SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  ReusableTextByH(title: "Stylistic",size: 20,weight: FontWeight.w400,color: Colors.white,),
                  ReusableTextByH(title: "Djstylistic11@gmail.com",size: 16,weight: FontWeight.w300,color: Colors.white,),
                ],
              )
            ],
          ),
          const  SizedBox(height: 60,),
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyProfileScreen()));
              });
            },
            child: const Row(
              children:[
                Icon(Icons.person,color: Colors.white,),
                SizedBox(width: 30,),
                ReusableTextByH(title: "My Profile",size:18 ,weight: FontWeight.w400,color: Colors.white,)
              ],
            ),
          ),
          const   SizedBox(height: 20,),
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingScreen()));
              });
            },
            child: Row(
              children:  [
                SvgPicture.asset("Assets/icons/menu/setting.svg",height: 25,width: 25,),
               const  SizedBox(width: 25,),
                const ReusableTextByH(title: "Settings",size:18 ,weight: FontWeight.w400,color: Colors.white,)
              ],
            ),
          ),
          const   SizedBox(height: 20,),
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationScreen()));
              });
            },
            child: const Row(
              children:[
                Icon(Icons.notifications_active_outlined,color: Colors.white,),
                SizedBox(width: 30,),
                ReusableTextByH(title: "Notifications",size:18 ,weight: FontWeight.w400,color: Colors.white,)
              ],
            ),
          ),
          const   SizedBox(height: 20,),
          InkWell(
            onTap: (){
              setState(() {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>const MenuCourseClick()));
              });
            },
            child: Row(
              children: [

                SvgPicture.asset("Assets/icons/menu/bi_book.svg",height: 25,width: 25,),
               const  SizedBox(width: 30,),
               const ReusableTextByH(title: "Course Curriculum ",size:18 ,weight: FontWeight.w400,color: Colors.white,)
              ],
            ),
          ),
          const   SizedBox(height: 20,),
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  const AboutUsScreen()));
              });
            },

            child: Row(
              children: [
                SvgPicture.asset("Assets/icons/menu/about.svg",height: 25,width: 25,),
               const  SizedBox(width: 30,),
               const ReusableTextByH(title: "About Us",size:18 ,weight: FontWeight.w400,color: Colors.white,)
              ],
            ),
          ),
          const  SizedBox(height: 20,),
          Row(
            children: [

              SvgPicture.asset("Assets/icons/menu/la_discord.svg",height: 25,width: 25,),
              const SizedBox(width: 30,),
             const  ReusableTextByH(title: "Discord",size:18 ,weight: FontWeight.w400,color: Colors.white,)
            ],
          ),
          const  SizedBox(height: 20,),
          const Row(
            children:[
              Icon(Icons.store,color: Colors.white,),
              SizedBox(width: 30,),
              ReusableTextByH(title: "Deckademics Store",size:18 ,weight: FontWeight.w400,color: Colors.white,)
            ],
          ),
          const SizedBox(height: 150,),
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  const LoginScreen()));
              });
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffE95B5B)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("Assets/icons/menu/si-glyph_door.svg",height: 25,width: 25,),
                 const  SizedBox(width: 10,),
                 const  ReusableTextByH(title: "Log Out",size:24 ,weight:FontWeight.w300 ,color: Colors.white,)
                ],
              ),
            ),
          )
        ],
      ),
    ),));
  }
}
