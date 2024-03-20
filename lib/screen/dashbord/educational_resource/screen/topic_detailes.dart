import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thehappy/utils/colors.dart';

import '../../../../re_useable_widgets/custtom_app_bar.dart';
import '../../home/screen/community_engagment_screen.dart';

class TopicDetailes extends StatelessWidget {
  const TopicDetailes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCusttomAppBar().second_custtom_app_bar(
          title: "Topic Details"),
      body:
      Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.bColor,
                AppColors.secondbgColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Container(
                    height: 600,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.whiteColor,
                      image: DecorationImage(
                        image: AssetImage("assets/images/education_resource_images/detailes_images.png"),
                        fit: BoxFit.fill,
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pellentesque quam pellen",style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff333333),
                          ),),
                          SizedBox(height: 12,),
                          Text("Cras proin eu pulvinar pellentesque quam pellen tes que morbi nisi.Cras proin"
                              " eu pulv inar pellentesque quam pellen tes que mo rbi nisi.Cras proin eu pulvinar.",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff333333),
                          ),),
                        ],
                      ),
                    ),
                  ),





                ],
              ),
            ),
          )
      ),
    );
  }
}
