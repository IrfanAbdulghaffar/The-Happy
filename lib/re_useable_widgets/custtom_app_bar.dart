import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thehappy/utils/colors.dart';

class CusttomAppBar{
   AppBar custtom_app_bar({required String title}) {
    return AppBar(
      // elevation: 0,
      // backgroundColor: AppColors.bColor,
      titleSpacing: -13,
      leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios)),
      title: Text(title,style: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        // color: AppColors.blackColor
      ),),
    );
  }
}
class SecondCusttomAppBar{
  AppBar second_custtom_app_bar({required String title}) {
    return AppBar(
      // elevation: 0,
      // backgroundColor: AppColors.bColor,
      titleSpacing: -15,
      leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios)),
      title: Text(title,style: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),),
      actions: [
        Padding(
          padding: const EdgeInsets.all(2),
          child: Image.asset("assets/images/home_screen_images/app_bar_logo.png"),
        )
      ],
    );
  }
}