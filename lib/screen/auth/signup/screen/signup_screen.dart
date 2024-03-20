// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:thehappy/re_useable_widgets/custtom_button.dart';
// import 'package:thehappy/screen/auth/login/screen/login_screen.dart';
// import 'package:thehappy/screen/auth/signup/screen/second_signup_screen.dart';
// import 'package:thehappy/utils/colors.dart';
// import 'package:http/http.dart' as http;
// import '../../../../re_useable_widgets/custtom_app_bar.dart';
// import '../../../../re_useable_widgets/custtom_textform_field.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({Key? key}) : super(key: key);

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
  

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
//               horizontal: MediaQuery.of(context).size.width * 0.05,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       "Create your",
//                       style: GoogleFonts.poppins(
//                         fontSize: MediaQuery.of(context).size.width * 0.045,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     Text(
//                       " Therhappy Account",
//                       style: GoogleFonts.poppins(
//                         fontSize: MediaQuery.of(context).size.width * 0.045,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   "Name",
//                   style: GoogleFonts.poppins(
//                     fontSize: 20,
//                     // color: AppColors.blackColor,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 CusttomTextField(
//                   obscTextTrue: false,
//                   hintText: "Enter your full name",
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   "Email",
//                   style: GoogleFonts.poppins(
//                     fontSize: 20,
//                     // color: AppColors.blackColor,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 CusttomTextField(
//                   obscTextTrue: false,
//                   hintText: "Enter your email address",
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   "Phone number",
//                   style: GoogleFonts.poppins(
//                     fontSize: 20,
//                     // color: AppColors.blackColor,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 CusttomTextField(
//                   obscTextTrue: false,
//                   hintText: "Enter your phone number",
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   "Create password",
//                   style: GoogleFonts.poppins(
//                     fontSize: 20,
//                     // color: AppColors.blackColor,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 CusttomTextField(
//                   obscTextTrue: false,
//                   hintText: "Create a password",
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   "Confirm password",
//                   style: GoogleFonts.poppins(
//                     fontSize: 20,
//                     // color: AppColors.blackColor,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 CusttomTextField(
//                   obscTextTrue: false,
//                   hintText: "Re-enter your password",
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 CustomButton(
//                   height: 60.0,
//                   width: MediaQuery.of(context).size.width,
//                   onTap: () async {
//                     await registerUser();
//                     Get.to(() => const SecondSignupScreen());
//                   },
//                   borderRadius: BorderRadius.circular(10),
//                   bacckcolor: AppColors.primaryColor,
//                   text: "Next",
//                   textcolorrr: AppColors.blackColor,
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Already have a account? ",
//                       style: GoogleFonts.poppins(
//                         fontSize: MediaQuery.of(context).size.width * 0.045,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Get.to(() => const LoginScreen());
//                       },
//                       child: Text(
//                         "Sign in",
//                         style: GoogleFonts.poppins(
//                             fontSize: MediaQuery.of(context).size.width * 0.045,
//                             fontWeight: FontWeight.w500,
//                             color: AppColors.primaryColor),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
