// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:thehappy/main.dart';
// import 'package:thehappy/re_useable_widgets/custtom_button.dart';
// import 'package:thehappy/utils/colors.dart';

// import '../../../../re_useable_widgets/bottom_navigation.dart';
// import '../../../../re_useable_widgets/custtom_textform_field.dart';
// import '../../signup/screen/signup_screen.dart';


// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           // gradient: LinearGradient(
//           //   colors: [
//           //     AppColors.bColor,
//           //     AppColors.secondbgColor,
//           //   ],
//           //   begin: Alignment.topCenter,
//           //   end: Alignment.bottomCenter,
//           // ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   height: 380,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage(
//                             "assets/images/auth_images/login_logo.png")
//                         ),
//                     ),
//                   child: Padding(
//                     padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Row(
//                           children: [
//                             Text("Login your",
//                               style: GoogleFonts.poppins(
//                                 fontSize: MediaQuery.of(context).size.width * 0.045,
//                                 fontWeight: FontWeight.w500,
//                               ),),
//                             Text(" Therhappy Account",
//                               style: GoogleFonts.poppins(
//                                 fontSize: MediaQuery.of(context).size.width * 0.045,
//                                 fontWeight: FontWeight.w700,
//                               ),),
//                           ],
//                         ),
//                         SizedBox(height: 10,),
//                         Text("Or sign up for a new one below to join the Therhappy family!",
//                           style: GoogleFonts.poppins(
//                             fontSize: 16,
//                             color: Colors.grey,
//                             fontWeight: FontWeight.w500,
//                           ),),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 30,),
//                 Padding(
//                   padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.07),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Email",
//                         style: GoogleFonts.poppins(
//                           fontSize: 20,
//                           color: AppColors.blackColor,
//                           fontWeight: FontWeight.w500,
//                         ),),
//                       CusttomTextField(
//                         obscTextTrue: false,
//                         hintText: "Enter your email address",
//                       ),
//                       SizedBox(height: 30,),
//                       Text("Password",
//                         style: GoogleFonts.poppins(
//                           fontSize: 20,
//                           color: AppColors.blackColor,
//                           fontWeight: FontWeight.w500,
//                         ),),
//                       CusttomTextField(
//                         obscTextTrue: false,
//                         hintText: "Enter password",
//                       ),
//                       SizedBox(height: 10,),
//                       Align(
//                         alignment: Alignment.topRight,
//                         child: Text("Forgot your password?",
//                           style: GoogleFonts.poppins(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600,
//                             color: AppColors.primaryColor,
//                           ),),
//                       ),
//                       SizedBox(height: 30,),
//                       CustomButton(
//                         height: 60.0,
//                         width: MediaQuery.of(context).size.width,
//                         onTap: (){
//                           Get.to(()=>BottomNavigationBarScreen());
//                         },
//                         borderRadius: BorderRadius.circular(10),
//                         bacckcolor: AppColors.primaryColor,
//                         text: "Login",
//                         textcolorrr: AppColors.blackColor,
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.w600,
//                       ),
//                       SizedBox(height: 20,),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("Need a new account? ",
//                             style: GoogleFonts.poppins(
//                               fontSize: MediaQuery.of(context).size.width * 0.045,
//                               fontWeight: FontWeight.w400,
//                             ),),
//                           InkWell(
//                             onTap: (){
//                               Get.to(()=>SignupScreen());
//                             },
//                             child: Text("Sign up",
//                               style: GoogleFonts.poppins(
//                                   fontSize: MediaQuery.of(context).size.width * 0.045,
//                                 fontWeight: FontWeight.w500,
//                                 color: AppColors.primaryColor
//                               ),),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 20,),
//                     ],
//                   ),
//                 ),
//               ]
//           ),
//         ),
//       ),
//     );
//   }
// }
