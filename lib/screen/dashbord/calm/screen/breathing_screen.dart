import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../../re_useable_widgets/custtom_app_bar.dart';

class BreathingScreen extends StatelessWidget {
  const BreathingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCusttomAppBar().second_custtom_app_bar(
          title: "Breathing Exercises"),
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Icon(Icons.favorite,color: Color(0xffF87676),size: 50,),
                      Text(
                        'Release Tension',
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff393838),
                        ),
                      ),

                      SizedBox(height: 30,),
                      CircularPercentIndicator(
                        radius: 70.0,
                        animation: false,
                        animationDuration: 1200,
                        lineWidth: 10.0,
                        percent: 0.65,
                        center: new Text(
                          "Inhale",
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff393838),
                          ),
                        ),
                        circularStrokeCap: CircularStrokeCap.butt,
                        backgroundColor: Colors.white,
                        progressColor: Color(0xffF87676),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        '6cycle / 2min 6sec',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff393838),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFA9F9F),
                        ),
                        child: Center(
                          child: Text(
                            'Stop',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff010100),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Text(
                        'Relax and Get Comfortable',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff393838),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
