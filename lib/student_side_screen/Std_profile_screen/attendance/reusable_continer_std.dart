
import 'package:flutter/material.dart';

class ReusableContainerStd extends StatelessWidget {
  final String Title;
  final String TitleOfText;
  final Color colorOfContainer;



  const ReusableContainerStd({Key? key, required this.Title, required this.TitleOfText, required this.colorOfContainer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: colorOfContainer,
      ),
      child: Stack(
          children:[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child:
                  Text(Title,style: const TextStyle(fontSize: 48,fontWeight: FontWeight.w500,color: Colors.black),),
                ),
                const SizedBox(width: 20,),
                Text(TitleOfText,style: const TextStyle(fontSize: 36,fontWeight: FontWeight.w500,color: Colors.white),),

              ],
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    "Assets/images/attendance/attendance_1.png"
                ),
              ),
            )

          ]
      ),
    );
  }
}

