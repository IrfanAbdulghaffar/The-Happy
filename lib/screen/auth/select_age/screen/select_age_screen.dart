import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thehappy/main.dart';
import 'package:thehappy/re_useable_widgets/custtom_app_bar.dart';
import 'package:thehappy/screen/auth/login/screen/login_screen.dart';

import '../../../../utils/colors.dart';
import '../../subscription/screen/subscription_screen.dart';

class SlectAgeScreen extends StatelessWidget {
  const SlectAgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusttomAppBar().custtom_app_bar(title: 'Select Age'),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "How old are you?",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                  onTap: () {
                    navigateToNextScreen("18 years and older");
                    // Get.to(SubscriptionScreen());
                  },
                  child: buildContainer(
                      title: '18 years and older',
                      color: AppColors.secondaryColor)),
              SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: () {
                    navigateToNextScreen("13-17 years old");
                    // Get.to(LoginScreen());
                  },
                  child: buildContainer(
                      title: '13-17 years old', color: AppColors.whiteColor))
            ],
          ),
        ),
      ),
    );
  }

  void navigateToNextScreen(String selectedAge) {
    // Navigate to the next screen and pass the selected age as an argument
    Get.to(() => selectedAge == "18 years and older"
        ? SubscriptionScreen(
            //selectedAge: selectedAge
            )
        : SignupScreen(selectedAge: selectedAge));
  }

  Container buildContainer({required String title, required Color color}) {
    return Container(
      height: 115,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(26),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: AppColors.blackColor
              // fontStyle: FontStyle.italic,
              ),
        ),
      ),
    );
  }
}
