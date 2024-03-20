import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thehappy/screen/dashbord/calm/screen/coloring_page.dart';
import 'package:thehappy/screen/dashbord/calm/screen/puzzal_screen.dart';
import 'package:thehappy/screen/dashbord/calm/screen/relaxing_music.dart';
import 'package:thehappy/screen/dashbord/educational_resource/screen/topic_detailes.dart';
import 'package:thehappy/utils/colors.dart';

import '../../../../re_useable_widgets/custtom_app_bar.dart';
import '../../home/screen/community_engagment_screen.dart';
import 'breathing_screen.dart';

class CalmScreen extends StatelessWidget {
  const CalmScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCusttomAppBar().second_custtom_app_bar(
          title: "Calm Corner"),
      body:
      Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [
            //     AppColors.bColor,
            //     AppColors.secondbgColor,
            //   ],
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            // ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Activities",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),),
                  SizedBox(height: 10,),
                  InkWell(
                      onTap: (){
                        Get.to(()=>ColoringScreen());
                      },
                      child: buildContainer(title: 'Coloring Pages', image: "assets/images/calm_screen_images/coloring_page.png", color: Color(0xffD9D9D9))),
                  InkWell(
                      onTap: (){
                        Get.to(()=>PuzzalScreen());
                      },
                      child: buildContainer(title: 'Puzzles', image: "assets/images/calm_screen_images/puzzal.png", color: Color(0xffF9C9C8))),
                  InkWell(
                      onTap: (){
                        Get.to(()=>BreathingScreen());
                      },
                      child: buildContainer(title: 'Breathing Exercises', image: "assets/images/calm_screen_images/brathing_excir.png", color: Color(0xffE0C8E7))),
                  InkWell(
                    onTap: (){
                      Get.to(()=>RelaxingMusic());
                    },
                      child: buildContainer(title: 'Relaxing Music', image: "assets/images/calm_screen_images/relux_music.png", color: Color(0xffF3D3BA))),



                ],
              ),
            ),
          )
      ),
    );
  }

  Padding buildContainer({required String title,required String image,required Color color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
                    height: 115,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: color
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Image.asset(image,height: 60,),
                          SizedBox(width: 20,),
                          Expanded(
                            child: Text(title,style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff3a3a47),
                            ),),
                          ),
                        ],
                      ),
                    ),
                  ),
    );
  }
}
