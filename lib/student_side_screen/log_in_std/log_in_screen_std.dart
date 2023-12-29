
import 'package:deckademics/student_side_screen/Std_profile_screen/student_profile_screen_std.dart';
import 'package:deckademics/student_side_screen/onboarding_student/welcome_std.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';
import 'forgot_password_std.dart';



class LoginScreenStd extends StatefulWidget {
  const LoginScreenStd({Key? key}) : super(key: key);

  @override
  State<LoginScreenStd> createState() => _LoginScreenStdState();
}

class _LoginScreenStdState extends State<LoginScreenStd> {
  TextEditingController _userName = TextEditingController();
  TextEditingController _password = TextEditingController();
  late VideoPlayerController _controller;
  final hPadding = 0.17;
  bool passwordVisible = true;

  playVideo() {
    _controller = VideoPlayerController.asset('Assets/video.mp4')
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.setVolume(0.0);
        _controller.play();
        setState(() {});
      });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    playVideo();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  bool isLoading = false;
  setLoading(bool loading) {
    setState(() {
      isLoading = loading;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          if (_controller.value.isInitialized) VideoPlayer(_controller),
          Positioned.fill(
            child: Container(
              color: const Color(0xFF000000).withOpacity(0.6),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Image(
                        image: AssetImage(
                            "Assets/images/login_screen/deckademics.png")),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: passwordVisible,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                              icon: passwordVisible
                                  ? SvgPicture.asset(
                                "Assets/icons/login_screen/eye_off.svg",
                                height: 25,
                                width: 25,
                              )
                                  : const Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.white,
                              )

                          ),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Spacer(),
                        TextButton(onPressed: (){
                          setState(() {

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPasswordStd()));
                          });
                        }, child:const Text("Forgot Password",style: TextStyle(fontSize: 14,color: Colors.white),) )
                      ],
                    ),
                    const SizedBox(height: 70,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const StudentProfileScreenStd()));
                        });
                      },
                      child: Center(
                        child: Container(
                          height: 52,
                          width: 270,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: const Color(0xff5BCF7F),
                          ),
                          child: const Center(child: Text("Login",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white),)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 60,),
                    const Row(
                      children: [
                        Expanded(child: Divider(thickness: 2,color: Colors.white,)),
                        SizedBox(width: 10,),
                        Text("Or Connect With",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                        SizedBox(width: 10,),
                        Expanded(child: Divider(thickness: 2,color: Colors.white,)),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("Assets/images/login_screen/google.png")),
                        SizedBox(width: 30,),
                        Image(image: AssetImage("Assets/images/login_screen/facebook.png")),
                        SizedBox(width: 30,),
                        Image(image: AssetImage("Assets/images/login_screen/twitter.png")),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have account?",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white),),
                        const SizedBox(width: 10,),
                        TextButton(onPressed: (){
                          setState(() {

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const WelcomeScreenStd()));
                          });
                        }, child: const Text("Signup",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff5BCF7F)),))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
