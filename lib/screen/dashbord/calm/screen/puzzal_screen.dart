import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thehappy/screen/dashbord/educational_resource/screen/topic_detailes.dart';
import 'package:thehappy/utils/colors.dart';

import '../../../../re_useable_widgets/custtom_app_bar.dart';
import '../../home/screen/community_engagment_screen.dart';

class PuzzalScreen extends StatefulWidget {
  const PuzzalScreen({Key? key}) : super(key: key);

  @override
  State<PuzzalScreen> createState() => _PuzzalScreenState();
}

class _PuzzalScreenState extends State<PuzzalScreen> {
  int _secondsRemaining = 25 * 60;
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer.cancel(); // Stop the timer when it reaches zero
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    int minutes = _secondsRemaining ~/ 60;
    int seconds = _secondsRemaining % 60;
    return Scaffold(
      appBar: SecondCusttomAppBar().second_custtom_app_bar(
          title: "Puzzles"),
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
                children: [
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(height: 30,width: 30,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(100),
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
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(Icons.arrow_back_ios,color: AppColors.blackColor,),
                        ),
                      ),
                      Container(height: 30,width: 30,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(100),
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
                          padding: const EdgeInsets.only(right: 5),
                          child: Icon(Icons.check,color: AppColors.blackColor,),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 55,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFA9F9F)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Center(
                        child: Text(
                          '$minutes:${seconds < 10 ? '0$seconds' : '$seconds'}',
                          style: GoogleFonts.poppins(
                            fontSize: 36,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 356,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff7D3A1F),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            buildContainer(title: '1'),
                            buildContainer(title: '2'),
                            buildContainer(title: '3'),
                            buildContainer(title: '4'),

                          ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            buildContainer(title: '5'),
                            buildContainer(title: '6'),
                            buildContainer(title: '7'),
                            buildContainer(title: '8'),

                          ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            buildContainer(title: '9'),
                            buildContainer(title: '10'),
                            buildContainer(title: '11'),
                            buildContainer(title: '12'),

                          ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            buildContainer(title: '13'),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.021,),
                            buildContainer(title: '14'),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.021,),
                            buildContainer(title: '15'),

                          ],),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFA9F9F),
                        ),
                        child: Center(
                          child: Text(
                            'Help',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff010100),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 30,),
                      Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFA9F9F),
                          ),
                          child:Icon(Icons.settings)
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

  Container buildContainer({required String title}) {
    return Container(
                            height: 75,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFFDFDF),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xffffffff),
                                ),
                                child: Center(
                                  child: Text(title,style: GoogleFonts.inter(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff7d391f),
                                  ),),
                                ),
                              ),
                            ),

                          );
  }
  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

}
