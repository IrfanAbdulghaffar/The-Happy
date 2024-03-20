import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thehappy/utils/colors.dart';
import '../../../../re_useable_widgets/custtom_app_bar.dart';

class SaftAlertScreen extends StatelessWidget {
  const SaftAlertScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCusttomAppBar().second_custtom_app_bar(
          title: "Safety Alerts"),
      body:
      Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/home_screen_images/add_photo.png",
                        height: 98,
                        width: 111,
                        // height: MediaQuery.of(context).size.height * 0.14,
                        // width: MediaQuery.of(context).size.width * 0.28,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Blood type:",style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),),
                          SizedBox(height: 6,),
                          Container(
                            height: MediaQuery.of(context).size.width * 0.05,
                              width: MediaQuery.of(context).size.width * 0.24,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: TextFormField(
                                cursorColor: Colors.white,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(bottom: 13,left: 5),
                                    border: InputBorder.none
                                ),
                              ),),
                          SizedBox(height: 6,),
                          Text("DOB:",style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),),
                          SizedBox(height: 6,),
                          Container(
                            height: MediaQuery.of(context).size.width * 0.05,
                            width: MediaQuery.of(context).size.width * 0.24,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                            child: TextFormField(
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(bottom: 13,left: 5),
                                  border: InputBorder.none
                              ),
                            ),),
                        ],
                      ),
                      Container(
                        // height: MediaQuery.of(context).size.height * 0.14,
                        // width: MediaQuery.of(context).size.width * 0.28,
                        height: 105,
                        width: 105,
                        decoration: BoxDecoration(
                            color: Color(0xffD33C00),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Image.asset("assets/images/home_screen_images/alert.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35)
                        ),
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Image.asset("assets/images/home_screen_images/instruction.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35)
                        ),
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Image.asset("assets/images/home_screen_images/medcation.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35)
                        ),
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Image.asset("assets/images/home_screen_images/health_condition.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35)
                        ),
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Image.asset("assets/images/home_screen_images/emergency_contact.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35)
                        ),
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Image.asset("assets/images/home_screen_images/allergy.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35)
                        ),
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Image.asset("assets/images/home_screen_images/my_doctor.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
