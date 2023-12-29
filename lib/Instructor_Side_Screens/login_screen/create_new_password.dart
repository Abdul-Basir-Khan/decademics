
import 'package:deckademics/Instructor_Side_Screens/login_screen/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'check_email_done.dart';


class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  bool passwordVisible= true;
  bool passwordVisible1= true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff212529),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff212529),
          leading: IconButton(

            color: const Color(0xffFFFFFF), onPressed: () { setState(() {

              Navigator.pop(context);
            }); }, icon:const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Center(
                  child: ReusableText(
                    title: "Create New Password",
                    size: 24,
                    weight: FontWeight.w500,
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: ReusableText(
                    title:
                    "You must create a new password that is \ndifferent from the one you previously used.",
                    size: 14,
                    align: TextAlign.center,
                    weight: FontWeight.w400,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30,),
              const ReusableText(title: "New Password",color: Colors.white,size: 14,weight: FontWeight.w400,),
              const SizedBox(height: 10,),
              TextField(
                obscureText:passwordVisible1 ,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordVisible1 = !passwordVisible1;
                          });
                        },
                        icon: passwordVisible1
                            ?
                        SvgPicture.asset(
                          "Assets/icons/login_screen/eye_off.svg",
                          color: Colors.black,
                          height: 25,
                          width: 25,
                        )
                            :
                        const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.black,
                        )


                      ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    )
                ),
              ),
            const  Center(
                  child: ReusableText(
                    title:
                    "Password must be 8 characters or more and include at least one uppercase\nletter, one lowercase letter, and one number.",
                    size: 10,
                    weight: FontWeight.w400,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30,),
              const ReusableText(title: "Confirm Password",color: Colors.white,size: 14,weight: FontWeight.w400,),
              const SizedBox(height: 10,),
              TextField(
                obscureText:passwordVisible ,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                        icon: passwordVisible
                            ?
                        SvgPicture.asset(
                          "Assets/icons/login_screen/eye_off.svg",
                          color: Colors.black,
                          height: 25,
                          width: 25,
                        )
                            :
                        const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.black,
                        )

                       ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CheckEmailDoneScreen()));
                  });
                },
                child:
                Container(
                  height: 50,
                  width: 274,
                  decoration: BoxDecoration(
                      color: const Color(0xffCCCCCC),
                      borderRadius: BorderRadius.circular(22)
                  ),
                  child: const Center(
                    child: ReusableText(title: "Reset Password",color: Colors.white,weight: FontWeight.w600,size: 16,),
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
