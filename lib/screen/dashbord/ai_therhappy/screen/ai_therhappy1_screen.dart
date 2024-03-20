import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../re_useable_widgets/custtom_button.dart';
import '../../../../utils/colors.dart';

class NotRightNowScreen extends StatelessWidget {
  const NotRightNowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text("1 of 12",
                      // textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        width: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Container(
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        width: MediaQuery.of(context).size.width * 0.75,
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text("Consectetur estibulum pell entes que vel non cursus si t. Et pellen tesque con dim Consectetur est ibulum pell entes que vel non cur sus si t. ",
                      // textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text("Dstibulum pell entes que vel non cursus si t. Et pellen tesque con dim Consectetur est ibulum pell entes. ",
                      // textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomButton(
                      height: 60.0,
                      width: MediaQuery.of(context).size.width,
                      onTap: (){
                        // Get.to(()=>SecondSignupScreen());
                      },
                      borderRadius: BorderRadius.circular(10),
                      bacckcolor: AppColors.primaryColor,
                      text: "Not right now",
                      textcolorrr: AppColors.blackColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20,),
                  buildButtonContainer(title: 'I’m just curious'),
                  SizedBox(height: 20,),
                  buildButtonContainer(title: 'This time'),
                  SizedBox(height: 20,),
                  buildButtonContainer(title: 'Never ask again'),


                ],
              ),
            ),
          )
      ),
    );
  }

  Padding buildButtonContainer({required String title}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(title,
                        // textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff232b2d),
                          // color: Color(0xff232b2d),
                        ),
                      ),
                    ),
                  ),
    );
  }
}