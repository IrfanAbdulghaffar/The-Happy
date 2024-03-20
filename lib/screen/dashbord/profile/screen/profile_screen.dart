import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:thehappy/screen/auth/models/usermodel.dart';
import 'package:thehappy/screen/dashbord/profile/screen/language_screen.dart';
import 'package:thehappy/screen/dashbord/profile/screen/privacy_policy_screen.dart';
import 'package:thehappy/screen/dashbord/profile/screen/user_feedback.dart';
import '../../../../models/them_model.dart';
import '../../../../re_useable_widgets/custtom_app_bar.dart';
import '../../../../utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  final UserData? userData;
  const ProfileScreen({Key? key, this.userData}) : super(key: key);
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _switch = false;
  bool light0 = false;
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemModel themeNotifier, child) {
      return Scaffold(
        appBar: CusttomAppBar().custtom_app_bar(title: 'Profile'),
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
              child: SingleChildScrollView(
                child: Column(children: [
                  Image.asset(
                    "assets/images/profile_screen_images/profile_screen_logo.png",
                    height: 150,
                  ),
                  Text(
                    widget.userData != null ? widget.userData!.name : '',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    widget.userData != null ? widget.userData!.email : '',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Image.asset(
                            "assets/images/profile_screen_images/notification.png")),
                    title: Text(
                      "Notifications",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        // color: AppColors.blackColor
                      ),
                    ),
                    trailing: Container(
                      height: 25,
                      width: 40,
                      child: FlutterSwitch(
                        inactiveColor: AppColors.primaryColor,
                        activeColor: Colors.grey,
                        width: 40.0,
                        height: 25.0,
                        toggleSize: 17,
                        value: light0,
                        onToggle: (value) {
                          setState(() {
                            light0 = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => LanguageScreen());
                      },
                      child: buildListTile(
                          image:
                              'assets/images/profile_screen_images/language.png',
                          title: 'Languages')),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Image.asset(
                            "assets/images/profile_screen_images/dark_mode.png")),
                    title: Text(
                      themeNotifier.isDark ? "Light mode" : "Dark mode",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        // color: AppColors.blackColor
                      ),
                    ),
                    trailing: Container(
                      height: 25,
                      width: 40,
                      child: FlutterSwitch(
                        inactiveColor: AppColors.primaryColor,
                        activeColor: Colors.grey,
                        width: 40.0,
                        height: 25.0,
                        toggleSize: 17,
                        value: themeNotifier.isDark ? false : true,
                        onToggle: (value) {
                          setState(() {
                            themeNotifier.isDark
                                ? themeNotifier.isDark = false
                                : themeNotifier.isDark = true;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => PrivacyPolicyScreen());
                      },
                      child: buildListTile(
                          image:
                              'assets/images/profile_screen_images/privacy_policy.png',
                          title: 'Privacy Policy')),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => UserFeedBack());
                      },
                      child: buildListTile(
                          image: 'assets/images/profile_screen_images/rate.png',
                          title: 'Rate Therhappy')),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Image.asset(
                            "assets/images/profile_screen_images/logout.png")),
                    title: Text(
                      "Log Out",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        // color: AppColors.blackColor
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ]),
              )),
        ),
      );
    });
  }

  ListTile buildListTile({required String image, required String title}) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset(image)),
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            // color: AppColors.blackColor
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ));
  }
}
