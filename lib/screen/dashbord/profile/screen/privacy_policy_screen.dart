import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thehappy/utils/colors.dart';
import '../../../../re_useable_widgets/custtom_app_bar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCusttomAppBar().second_custtom_app_bar(
          title: "Privacy Policy"),
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
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.05,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Learn how we deal with our users’ data.",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    // color: Color(0xff232b2d),

                  ),),
                  SizedBox(height: 20,),
                  Text("Pell entes que vel non cursus si t. Et pellen tesque con dim Consectetur est ibulum pell entes. Consectetur estibu lum pell ent es que vel non cursus si t. Et pellen tesque con dim Consectetur est ibulum pell entes que vel non cur sus si t. ",style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    // color: Color(0xff3a3a47),
                  ),),
                  SizedBox(height: 20,),
                  Text("Consectetur estibulum pell entes que vel non cursus si t. Et pellen tesque con dim Consectetur est ibulum pell entes que vel non cur sus si t. ",style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    // color: Color(0xff3a3a47),
                  ),),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                            color: AppColors.blackColor,
                          borderRadius: BorderRadius.circular(100)
                        ),
                      ),
                      SizedBox(width:MediaQuery.of(context).size.width * 0.03,),
                      Expanded(
                        child: Text("Consectetur estibu lum pell ent",style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          // color: Color(0xff3a3a47),
                        ),),
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 15),
                    child: Text("Consectetur estibulum pell entes que vel non cursus si t. Et pellen tesque con dim Consectetur est ibulum pell entes que vel non cur sus si t. ",style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      // color: Color(0xff3a3a47),
                    ),),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                            color: AppColors.blackColor,
                            borderRadius: BorderRadius.circular(100)
                        ),
                      ),
                      SizedBox(width:MediaQuery.of(context).size.width * 0.03,),
                      Expanded(
                        child: Text("Consectetur estibu lum pell ent",style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          // color: Color(0xff3a3a47),
                        ),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Consectetur estibulum pell entes que vel non cursus si t. Et pellen tesque con dim Consectetur est ibulum pell entes que vel non cur sus si t. ",style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      // color: Color(0xff3a3a47),
                    ),),
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }
}