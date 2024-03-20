import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thehappy/screen/dashbord/home/screen/safty_alert_screen.dart';
import 'package:thehappy/utils/colors.dart';

import '../../ai_therhappy/screen/ai_therhapp_screen.dart';
import '../../calm/screen/calm_screen.dart';
import 'community_engagment_screen.dart';
import '../../educational_resource/screen/educational_resource_screen.dart';
import 'al_jounral_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05,vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning!",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),),
                        Text("How are you feeling today?",style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          // color: Color(0xff121b22),
                        ),),
                      ],
                    ),
                    Image.asset("assets/images/home_screen_images/home_screen_logo.png",height:MediaQuery.of(context).size.height * 0.14,)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Active Therhappy",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                    ),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(()=>CommunityEngagmentScreen());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.22,
                            width: MediaQuery.of(context).size.width * 0.41,
                            decoration: BoxDecoration(
                                color: Color(0xffECB277),
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/home_screen_images/community.png"),
                                  fit: BoxFit.fill,
                                )
                            ),
                          )
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(()=>EducationalResourceScreen());
                          },
                          child:  Container(
                            height: MediaQuery.of(context).size.height * 0.22,
                            width: MediaQuery.of(context).size.width * 0.41,
                            decoration: BoxDecoration(
                                color: Color(0xff7E85F7),
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/home_screen_images/education.png"),
                                  fit: BoxFit.fill,
                                )
                            ),
                          )
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap:(){
                            Get.to(()=>AiTherhappyScreen());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.22,
                            width: MediaQuery.of(context).size.width * 0.41,
                            decoration: BoxDecoration(
                                color: Color(0xffE46371),
                                borderRadius: BorderRadius.circular(35),
                              image: DecorationImage(
                                image: AssetImage("assets/images/home_screen_images/customization.png"),
                                fit: BoxFit.fill,
                              )
                            ),
                          ),
                        ),
                        InkWell(
                          onTap:(){
                            Get.to(()=>CalmScreen());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.22,
                            width: MediaQuery.of(context).size.width * 0.41,
                            decoration: BoxDecoration(
                                color: Color(0xffEDA8B0),
                                borderRadius: BorderRadius.circular(35),
                              image: DecorationImage(
                                image: AssetImage("assets/images/home_screen_images/corner.png"),
                                fit: BoxFit.fitWidth
                              )
                            ),

                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(()=>AlJounralScreen());
                          },
                          child:
                          Container(
                            height: MediaQuery.of(context).size.height * 0.22,
                            width: MediaQuery.of(context).size.width * 0.41,
                            decoration: BoxDecoration(
                                color: Color(0xff6DBABD),
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/home_screen_images/jounral.png"),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(()=>SaftAlertScreen());
                          },
                          child:
                          Container(
                            height: MediaQuery.of(context).size.height * 0.22,
                            width: MediaQuery.of(context).size.width * 0.41,
                            decoration: BoxDecoration(
                                color: Color(0xffC79787),
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/home_screen_images/safty.png"),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                        ),
                      ],
                    ),


                  ],
                ),
                SizedBox(height: 50,)

              ],
            ),
          ),
        )
      ),
    );
  }
}
