import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thehappy/screen/dashbord/educational_resource/screen/topic_detailes.dart';
import 'package:thehappy/utils/colors.dart';

import '../../../../re_useable_widgets/custtom_app_bar.dart';
import '../../../../re_useable_widgets/custtom_button.dart';
import 'community_engagment_screen.dart';

class AlTraitAndToneSelection extends StatelessWidget {
  const AlTraitAndToneSelection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCusttomAppBar().second_custtom_app_bar(
          title: "AI Trait and Tone Selection"),
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
            padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.05,),
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/profile_screen_images/profile_screen_logo.png",height: 150,),
                  Padding(
                    padding:  EdgeInsets.all(MediaQuery.of(context).size.width * 0.025,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.054,
                          width: MediaQuery.of(context).size.width * 0.11,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(100)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/al_trait_and_tone_selection_images/0.png"),
                          ),
                        ),
                        Image.asset("assets/images/al_trait_and_tone_selection_images/1.png",height: MediaQuery.of(context).size.height * 0.054,),
                        Image.asset("assets/images/al_trait_and_tone_selection_images/2.png",height: MediaQuery.of(context).size.height * 0.054,),
                        Image.asset("assets/images/al_trait_and_tone_selection_images/3.png",height:MediaQuery.of(context).size.height * 0.054,),
                        Image.asset("assets/images/al_trait_and_tone_selection_images/taj.png",height: MediaQuery.of(context).size.height * 0.054,),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)
                        ),
                          child: Image.asset("assets/images/al_trait_and_tone_selection_images/4.png", width: MediaQuery.of(context).size.width * 0.29,height:MediaQuery.of(context).size.height * 0.2,fit: BoxFit.cover, )),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)
                        ),
                          child: Image.asset("assets/images/al_trait_and_tone_selection_images/5.png", width: MediaQuery.of(context).size.width * 0.29,height:MediaQuery.of(context).size.height * 0.2,fit: BoxFit.cover, )),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)
                        ),
                          child: Image.asset("assets/images/al_trait_and_tone_selection_images/6.png", width: MediaQuery.of(context).size.width * 0.29,height:MediaQuery.of(context).size.height * 0.2,fit: BoxFit.cover, )),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)
                        ),
                          child: Image.asset("assets/images/al_trait_and_tone_selection_images/7.png", width: MediaQuery.of(context).size.width * 0.29,height:MediaQuery.of(context).size.height * 0.2,fit: BoxFit.cover, )),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)
                        ),
                          child: Image.asset("assets/images/al_trait_and_tone_selection_images/8.png", width: MediaQuery.of(context).size.width * 0.29,height:MediaQuery.of(context).size.height * 0.2,fit: BoxFit.cover, )),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)
                        ),
                          child: Image.asset("assets/images/al_trait_and_tone_selection_images/9.png", width: MediaQuery.of(context).size.width * 0.29,height:MediaQuery.of(context).size.height * 0.2,fit: BoxFit.cover, )),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)
                        ),
                          child: Image.asset("assets/images/al_trait_and_tone_selection_images/10.png", width: MediaQuery.of(context).size.width * 0.29,height:MediaQuery.of(context).size.height * 0.2,fit: BoxFit.cover, )),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)
                        ),
                          child: Image.asset("assets/images/al_trait_and_tone_selection_images/11.png", width: MediaQuery.of(context).size.width * 0.29,height:MediaQuery.of(context).size.height * 0.2,fit: BoxFit.cover, )),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)
                        ),
                          child: Image.asset("assets/images/al_trait_and_tone_selection_images/12.png", width: MediaQuery.of(context).size.width * 0.29,height:MediaQuery.of(context).size.height * 0.2,fit: BoxFit.cover, )),


                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Select trait",style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3a3a47),
                      ),),
                      SizedBox(height: 10,),
                      buildPadding(title: 'Empathy'),
                      SizedBox(height: 20,),
                      Text("Select tone",style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3a3a47),
                      ),),
                      buildPadding(title: 'Friendly'),
                      SizedBox(height: 20,),
                      CustomButton(
                        height: 60.0,
                        width: MediaQuery.of(context).size.width,
                        onTap: (){
                          // Get.to(()=>LoginScreen());
                        },
                        borderRadius: BorderRadius.circular(10),
                        bacckcolor: AppColors.primaryColor,
                        text: "Save & Apply",
                        textcolorrr: AppColors.blackColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 80,),
                    ],
                  ),



                ],
              ),
            ),
          )
      ),
    );
  }

  Padding buildPadding({required String title}) {
    return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 10,left: 10),
                          hintText: title,
                          hintStyle: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(Icons.keyboard_arrow_down),
                          ),
                          suffixIconColor: Colors.black,
                          prefixIconColor: Colors.black,
                          border: InputBorder.none

                      ),
                    ),
                  ),
                );
  }

}
