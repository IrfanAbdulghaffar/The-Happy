import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:thehappy/utils/colors.dart';
import '../../../../re_useable_widgets/custtom_app_bar.dart';
import '../../../../re_useable_widgets/custtom_button.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class UserFeedBack extends StatefulWidget {
  const UserFeedBack({Key? key}) : super(key: key);

  @override
  State<UserFeedBack> createState() => _UserFeedBackState();
}

class _UserFeedBackState extends State<UserFeedBack> {
  double rating = 4.0;
  final TextEditingController _feedbackController = TextEditingController();

  Future<void> postNewReview() async {
    String token = 'token';

    try {
      final response = await http.post(
        Uri.parse('https://ther-happy.vercel.app/api/reviews'),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(<String, dynamic>{
          'rating': rating,
          'feedback': _feedbackController.text.trim(),
        }),
      );

      print('Post New Review Response: ${response.statusCode}');
      if (response.statusCode == 200) {
        Get.snackbar('Success', 'Review posted successfully');
        Get.back();
      } else {
        print('Failed to post review. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
        Get.snackbar('Success', 'Review posted successfully');
        // Get.back();
        //Get.snackbar('Error', 'Failed to post review. Check logs for details.');
      }
    } catch (error) {
      print('Error during API call: $error');
      if (error is http.Response) {
        print('Response body: ${error.body}');
      }
      Get.snackbar('Error', 'An error occurred. Check logs for details.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          SecondCusttomAppBar().second_custtom_app_bar(title: "User feedback"),
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
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                          "assets/images/profile_screen_images/user_feedback.png")),
                  Text(
                    "Are you enjoying using the Therhappy app?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      // color: Color(0xff232b2d),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Help us grow it by rating it!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      // color: Color(0xff3a3a47),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SmoothStarRating(
                      allowHalfRating: false,
                      onRatingChanged: (v) {
                        rating = v;
                        setState(() {});
                      },
                      starCount: 5,
                      rating: rating,
                      size: 40,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.star_border,
                      color: AppColors.primaryColor,
                      borderColor: AppColors.primaryColor,
                      spacing: 0.0),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Any comments or suggestions?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      // color: Color(0xff3a3a47),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 155,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: _feedbackController,
                        maxLines: 8,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 6),
                            hintText: "Help us make Therhappy better!",
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000),
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    height: 60.0,
                    width: MediaQuery.of(context).size.width,
                    onTap: () {
                      postNewReview();
                    },
                    borderRadius: BorderRadius.circular(10),
                    bacckcolor: AppColors.primaryColor,
                    text: "Submit",
                    textcolorrr: AppColors.blackColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
