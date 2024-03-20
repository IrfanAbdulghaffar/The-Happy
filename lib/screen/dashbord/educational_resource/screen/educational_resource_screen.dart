import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thehappy/screen/dashbord/educational_resource/screen/topic_detailes.dart';
import 'package:thehappy/utils/colors.dart';

import '../../../../re_useable_widgets/custtom_app_bar.dart';
import '../../home/screen/community_engagment_screen.dart';

class EducationalResourceScreen extends StatelessWidget {
  const EducationalResourceScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCusttomAppBar().second_custtom_app_bar(
          title: "Educational Resources"),
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
                  SizedBox(height: 25,),
                  Text("Topics",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),),
                  SizedBox(height: 45,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.to(()=>TopicDetailes());
                        },
                        child: Image.asset("assets/images/education_resource_images/anxity.png",
                          height: MediaQuery.of(context).size.height * 0.13,
                          width: MediaQuery.of(context).size.width * 0.28,
                        ),
                      ),
                      Image.asset("assets/images/education_resource_images/adication.png",
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.28,
                      ),
                      Image.asset("assets/images/education_resource_images/trauma.png",
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.28,
                      ),
                    ],
                  ),
                  SizedBox(height: 35,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          // Get.to(()=>CommunityEngagmentScreen());
                        },
                        child: Image.asset("assets/images/education_resource_images/bi_polar.png",
                          height: MediaQuery.of(context).size.height * 0.13,
                          width: MediaQuery.of(context).size.width * 0.28,
                        ),
                      ),
                      Image.asset("assets/images/education_resource_images/ocd.png",
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.28,
                      ),
                      Image.asset("assets/images/education_resource_images/grief.png",
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.28,
                      ),
                    ],
                  ),
                  SizedBox(height: 35,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          // Get.to(()=>CommunityEngagmentScreen());
                        },
                        child: Image.asset("assets/images/education_resource_images/anger.png",
                          height: MediaQuery.of(context).size.height * 0.13,
                          width: MediaQuery.of(context).size.width * 0.28,
                        ),
                      ),
                      Image.asset("assets/images/education_resource_images/diases.png",
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.28,
                      ),
                      Image.asset("assets/images/education_resource_images/wellbieng.png",
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.28,
                      ),
                    ],
                  ),
                  SizedBox(height: 35,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          // Get.to(()=>CommunityEngagmentScreen());
                        },
                        child: Image.asset("assets/images/education_resource_images/depression.png",
                          height: MediaQuery.of(context).size.height * 0.13,
                          width: MediaQuery.of(context).size.width * 0.28,
                        ),
                      ),
                      Image.asset("assets/images/education_resource_images/mindfulles.png",
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.28,
                      ),
                      Image.asset("assets/images/education_resource_images/adhd.png",
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.28,
                      ),
                    ],
                  ),


                ],
              ),
            ),
          )
      ),
    );
  }
}
