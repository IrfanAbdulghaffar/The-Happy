import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thehappy/screen/dashbord/educational_resource/screen/topic_detailes.dart';
import 'package:thehappy/utils/colors.dart';

import '../../../../re_useable_widgets/custtom_app_bar.dart';
import '../../home/screen/community_engagment_screen.dart';

class ColoringScreen extends StatelessWidget {
  const ColoringScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCusttomAppBar().second_custtom_app_bar(
          title: "Coloring Pages"),
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
                children: [
                  SizedBox(height: 10,),
                  Container(
                    // height: 600,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Color(0xffFDC4B1),
                     borderRadius: BorderRadius.circular(10),
                   ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Container(
                          height: 450,
                          width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/calm_screen_images/coloring_main_image.png"),
                                fit: BoxFit.fill
                              )
                            ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child:
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(height: 30,width: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 3,
                                        blurRadius: 3,
                                        offset: Offset(0, 1), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Icon(Icons.arrow_back_ios,color: AppColors.blackColor,),
                                  ),
                                ),
                                Container(height: 30,width: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 3,
                                        blurRadius: 3,
                                        offset: Offset(0, 1), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Icon(Icons.check,color: AppColors.blackColor,),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          buildEditContainer(image: 'assets/images/calm_screen_images/e1.png'),
                          buildEditContainer(image: 'assets/images/calm_screen_images/e2.png'),
                          buildEditContainer(image: 'assets/images/calm_screen_images/e3.png'),
                          buildEditContainer(image: 'assets/images/calm_screen_images/e4.png'),
                          buildEditContainer(image: 'assets/images/calm_screen_images/e5.png'),
                        ],),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 81,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset("assets/images/calm_screen_images/color1.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color2.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color3.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color4.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color5.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color6.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color7.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color8.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color9.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color19.png",height: MediaQuery.of(context).size.height* 0.025,),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset("assets/images/calm_screen_images/color10.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color11.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color12.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color13.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color14.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color15.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color16.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color17.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color18.png",height: MediaQuery.of(context).size.height* 0.025,),
                                      Image.asset("assets/images/calm_screen_images/color20.png",height: MediaQuery.of(context).size.height* 0.025,),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }

  Container buildEditContainer({required String image}) {
    return Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Image.asset(image),
                          ),
                        );
  }

  buildContainer({required String title,required String image,required Color color}) {
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
