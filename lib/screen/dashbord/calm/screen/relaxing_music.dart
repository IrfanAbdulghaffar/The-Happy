import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:thehappy/utils/colors.dart';
import '../../../../re_useable_widgets/custtom_app_bar.dart';

class RelaxingMusic extends StatefulWidget {
  const RelaxingMusic({Key? key}) : super(key: key);

  @override
  State<RelaxingMusic> createState() => _RelaxingMusicState();
}

class _RelaxingMusicState extends State<RelaxingMusic> {
  int sliderHeight = 60;
  int sliderWeight = 30;
  int sliderAge = 20;
  bool status = false;
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/calm_screen_images/relaxing_music_imag.png",height: 350,width: double.infinity,fit: BoxFit.fill,),
                  SizedBox(height: 30,),
                  Text(
                    'Pellentesque quam',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      // color: Color(0xff333333),
                    ),
                  ),
                  Text(
                    'Adele',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      // color: Color(0xff333333),
                    ),
                  ),
                  // SizedBox(height: 30,),
                  Slider(
                      value: sliderHeight.toDouble(),
                      min: 0.0,
                      max: 220.0,
                      activeColor: AppColors.primaryColor,
                      inactiveColor: AppColors.secondbgColor,
                      onChanged: (double newValue) {
                        setState(() {
                          sliderHeight = newValue.round();
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          sliderHeight.toString(),
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            // color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          "04:55",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            // color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.skip_previous_sharp,size: 40,),
                        Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.primaryColor
                            ),
                            child: Center(child: Icon(CupertinoIcons.play_arrow_solid,size: 40,))),
                        Icon(Icons.skip_next,size: 40,),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
