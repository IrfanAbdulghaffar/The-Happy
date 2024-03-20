import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:thehappy/utils/colors.dart';
import '../../../../re_useable_widgets/custtom_app_bar.dart';
import '../../../../re_useable_widgets/custtom_button.dart';
import 'ai_therhappy1_screen.dart';
import 'ai_therhappy2_screen.dart';

class AiTherhappyScreen extends StatefulWidget {
  const AiTherhappyScreen({Key? key}) : super(key: key);

  @override
  State<AiTherhappyScreen> createState() => _AiTherhappyScreenState();
}

class _AiTherhappyScreenState extends State<AiTherhappyScreen> {
  double rating = 4.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          // elevation: 0,
          // backgroundColor: AppColors.bColor,
          titleSpacing: -15,
          leading: InkWell(
              onTap: (){
                Get.back();
              },
              child: Icon(Icons.arrow_back_ios)),
          title: Row(
            children: [
              Image.asset("assets/images/home_screen_images/ai_logo.png",height: 30,),
              SizedBox(width: 10,),
              Text("Therhappy AI",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset("assets/images/home_screen_images/plus_icon.png",color: AppColors.primaryColor,),
            )
          ],
        ),
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
                  SizedBox(height: 20,),
                  buildContainer(context: context, title: 'Hello, Williamson 👋', height: 45, width: MediaQuery.of(context).size.width * 0.55),
                  SizedBox(height: 15,),
                  buildContainer(context: context, title: 'Lorem ipsum dolor sit am et co nsectetur.', height: 80, width: MediaQuery.of(context).size.width * 0.7),
                  SizedBox(height: 15,),
                  buildContainer(context: context, title: 'Consectetur estibulum pell en tesque vel non cursus si t. Et p ellentesque con dim entum fames tristique ', height: 118, width: MediaQuery.of(context).size.width * 0.7),
                  SizedBox(height: 15,),
                  Align(
                      alignment: Alignment.topRight,
                      child: buildContainerRight(context: context, title: 'Consectetur estibulum pell en tesque vel non cursus si t. Et p ellentesque con dim entum fames tristique ', height: 118, width: MediaQuery.of(context).size.width * 0.7)),
                  SizedBox(height: 15,),
                  Align(
                      alignment: Alignment.topRight,
                      child: buildContainerRight(context: context, title: 'Lorem ipsum dolor sit am et co nsectetur.', height: 73, width: MediaQuery.of(context).size.width * 0.7)),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: (){
                      Get.to(()=>NotRightNowScreen());
                    },
                    child: Align(
                        alignment: Alignment.center,
                        child: buildbuttonContainer(height: 46, width: MediaQuery.of(context).size.width * 0.4, title: 'Not right now')),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildbuttonContainer(height: 46, width: MediaQuery.of(context).size.width * 0.4, title: 'im just curious'),
                      InkWell(
                          onTap: (){
                            Get.to(()=>ThisTimeScreen());
                          },
                          child: buildbuttonContainer(height: 46, width: MediaQuery.of(context).size.width * 0.3, title: 'This time')),
                    ],
                  ),
                  SizedBox(height: 15,),

                ],
              ),
            ),
          )
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Write here...",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                  suffixIcon: Icon(Icons.send_outlined,color: Color(0xff232B2D),size: 35,),
                  border: InputBorder.none

              ),
            ),
          ),
        ),
      ),
    );
  }

  Container buildbuttonContainer({required double height,required double width,required String title}) {
    return Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(title,
                        // textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1c1c1c),
                          // color: Color(0xff232b2d),
                        ),
                      ),
                    ),
                  ),
                );
  }
  Container buildContainer({required BuildContext context,required double height,required double width,required String title}) {
    return Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.only(
                        // topLeft: Radius.circular(10),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(title,
                        // textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3a3a47),
                          // color: Color(0xff232b2d),
                        ),
                      ),
                    ),
                  ),
                );
  }
  Container buildContainerRight({required BuildContext context,required double height,required double width,required String title}) {
    return
      Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          // topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title,
            // textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff3a3a47),
              // color: Color(0xff232b2d),
            ),
          ),
        ),
      ),
    );
  }

}