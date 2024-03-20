// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'package:thehappy/re_useable_widgets/custtom_button.dart';
// import 'package:thehappy/screen/auth/login/screen/login_screen.dart';
// import 'package:thehappy/screen/auth/models/usermodel.dart';
// import 'package:thehappy/screen/dashbord/profile/screen/profile_screen.dart';
// import 'package:thehappy/utils/colors.dart';
// import '../../../../re_useable_widgets/bottom_navigation.dart';
// import '../../../../re_useable_widgets/custtom_app_bar.dart';
// import '../../../dashbord/home/screen/home_screen.dart';
// import 'package:http/http.dart' as http;

// enum Issue {
//   Anxiety,
//   Motivation,
//   Confidence,
//   Sleep,
//   Depression,
//   WorkStress,
//   Relationships,
//   ExamStress,
//   Pregnancy,
//   Loss,
//   Stress,
//   LowEnergy,
//   Performance,
//   PTSD,
//   LowMood,
//   PanicIssues,
// }

// class SecondSignupScreen extends StatefulWidget {
//   const SecondSignupScreen({Key? key}) : super(key: key);

//   @override
//   State<SecondSignupScreen> createState() => _SecondSignupScreenState();
// }

// class _SecondSignupScreenState extends State<SecondSignupScreen> {
//   Issue? selectIssue;
//   @override
//   void initState() {
//     setState(() {
//       selectIssue = Issue.Anxiety;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CusttomAppBar().custtom_app_bar(title: 'Sign Up'),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//             // gradient: LinearGradient(
//             //   colors: [
//             //     AppColors.bColor,
//             //     AppColors.secondbgColor,
//             //   ],
//             //   begin: Alignment.topCenter,
//             //   end: Alignment.bottomCenter,
//             // ),
//             ),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.symmetric(
//                 horizontal: MediaQuery.of(context).size.width * 0.05),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   "Select the mental health issues you need Therhappy for",
//                   style: GoogleFonts.poppins(
//                     fontSize: 19,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   "Helps us give you customized care!",
//                   style: GoogleFonts.poppins(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w300,
//                     // color: Color(0xff121b22),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 17,
//                 ),
//                 Row(
//                   children: [
//                     //
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.Anxiety;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/anixtystrees.png',
//                         title: 'Anxiety',
//                         color: selectIssue == Issue.Anxiety
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width * 0.07,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.Motivation;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/motvlowenergy.png',
//                         title: 'Motivation',
//                         color: selectIssue == Issue.Motivation
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 17,
//                 ),
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.Confidence;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/conf_perform.png',
//                         title: 'Confidence',
//                         color: selectIssue == Issue.Confidence
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width * 0.07,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.Sleep;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/sleep.png',
//                         title: 'Sleep',
//                         color: selectIssue == Issue.Sleep
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 17,
//                 ),
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           onTap:
//                           selectIssue = Issue.Depression;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/dep_lowmode.png',
//                         title: 'Depression',
//                         color: selectIssue == Issue.Depression
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width * 0.05,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.WorkStress;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/work_strees.png',
//                         title: 'Work Stress',
//                         color: selectIssue == Issue.WorkStress
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 17,
//                 ),
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.LowEnergy;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/motvlowenergy.png',
//                         title: 'Low Energy',
//                         color: selectIssue == Issue.LowEnergy
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width * 0.05,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.ExamStress;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/exam_panic.png',
//                         title: 'Exam Stress',
//                         color: selectIssue == Issue.ExamStress
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 17,
//                 ),
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.Pregnancy;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/prag.png',
//                         title: 'Pregnancy',
//                         color: selectIssue == Issue.Pregnancy
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width * 0.07,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.Loss;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/loos.png',
//                         title: 'Loss',
//                         color: selectIssue == Issue.Loss
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 17,
//                 ),
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.Stress;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/anixtystrees.png',
//                         title: 'Stress',
//                         color: selectIssue == Issue.Stress
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width * 0.07,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.Relationships;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/relation.png',
//                         title: 'Relationships',
//                         color: selectIssue == Issue.Relationships
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 17,
//                 ),
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.Performance;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/conf_perform.png',
//                         title: 'Performance',
//                         color: selectIssue == Issue.Performance
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width * 0.07,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.PTSD;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/sleep.png',
//                         title: 'PTSD',
//                         color: selectIssue == Issue.PTSD
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 17,
//                 ),
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.LowMood;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/dep_lowmode.png',
//                         title: 'Low Mood',
//                         color: selectIssue == Issue.LowMood
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width * 0.07,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           selectIssue = Issue.PanicIssues;
//                         });
//                       },
//                       child: mental_health_container(
//                         image: 'assets/images/auth_images/exam_panic.png',
//                         title: 'Panic Issues',
//                         color: selectIssue == Issue.PanicIssues
//                             ? AppColors.primaryColor
//                             : AppColors.whiteColor,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 CustomButton(
//                   height: 60.0,
//                   width: MediaQuery.of(context).size.width,
//                   onTap: () async {
                    

//                     // You can navigate to the next screen or perform any other action here
//                     Get.to(() => BottomNavigationBarScreen());
//                     //Get.to(()=>BottomNavigationBarScreen());
//                   },
//                   borderRadius: BorderRadius.circular(10),
//                   bacckcolor: AppColors.primaryColor,
//                   text: "Complete Sign Up",
//                   textcolorrr: AppColors.blackColor,
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Already have a account?",
//                       style: GoogleFonts.poppins(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Get.to(() => LoginScreen());
//                       },
//                       child: Text(
//                         " Sign in",
//                         style: GoogleFonts.poppins(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                             color: AppColors.primaryColor),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Container mental_health_container(
//       {required String image, required String title, required Color color}) {
//     return Container(
//       // height: 46,
//       // width: 167,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(66),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.3),
//             spreadRadius: 2,
//             blurRadius: 3,
//             offset: Offset(0, 1), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.030),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Image.asset(
//               image,
//               height: 24,
//               width: 24,
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width * 0.01,
//             ),
//             Text(
//               title,
//               style: GoogleFonts.poppins(
//                 fontSize: MediaQuery.of(context).size.width * 0.040,
//                 fontWeight: FontWeight.w500,
//                 color: Color(0xff121b22),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
