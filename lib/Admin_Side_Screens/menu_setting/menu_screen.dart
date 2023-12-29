
import 'package:deckademics/Admin_Side_Screens/menu_setting/admin_control_click.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../Instructor_Side_constants/reusable_text.dart';




class MenuScreenAdmin extends StatefulWidget {
  const MenuScreenAdmin({Key? key}) : super(key: key);

  @override
  State<MenuScreenAdmin> createState() => _MenuScreenAdminState();
}

class _MenuScreenAdminState extends State<MenuScreenAdmin> {
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

            });
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children:[
            const SizedBox(height: 20,),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Image(
                      image: AssetImage("Assets/Admin_Side/image/menu/Ellipse 35.png"),),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      ReusableTextByH(title: "Metrognome",size: 20,weight: FontWeight.w400,color: Colors.white,),
                      SizedBox(height: 15,),
                      ReusableTextByH(title: "Metrognome@gmail.com",size: 9,weight: FontWeight.w300,color: Colors.white,),
                    ],
                  )
                ],
              ),
            ),
            const  SizedBox(height: 60,),
            InkWell(
              onTap: (){
                setState(() {

                });
              },
              child: const Row(
                children:[
                  Icon(Icons.person_outline_outlined,color: Colors.white,),
                  SizedBox(width: 30,),
                  ReusableTextByH(title: "My Profile",size:18 ,weight: FontWeight.w400,color: Colors.white,)
                ],
              ),
            ),
            const   SizedBox(height: 20,),
            InkWell(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminControlClick()));
                });
              },
              child: const Row(
                children:[
                  Icon(Icons.manage_accounts_outlined,color: Colors.white,),
                  SizedBox(width: 30,),
                  ReusableTextByH(title: "Admins Controls",size:18 ,weight: FontWeight.w400,color: Colors.white,)
                ],
              ),
            ),
            const   SizedBox(height: 20,),
            InkWell(
              onTap: (){
                setState(() {

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
         const Spacer(),
            Center(
              child: InkWell(
                onTap: (){
                  setState(() {

                  });
                },
                child: Container(
                  height: 52,width: 270,
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
              ),
            )
          ],
        ),
      ),));
  }
}
