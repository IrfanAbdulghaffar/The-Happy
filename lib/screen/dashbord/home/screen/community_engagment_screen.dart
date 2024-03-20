import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../re_useable_widgets/custtom_app_bar.dart';
import '../../../../utils/colors.dart';

class CommunityEngagmentScreen extends StatelessWidget {
  const CommunityEngagmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCusttomAppBar().second_custtom_app_bar(
          title: "Community Engagement"),
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
          padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.01),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Icon(Icons.add),
                          ),
                        ),
                      ),
                      horizantal_container(
                          title: 'Prompts', color: AppColors.primaryColor),
                      horizantal_container(
                          title: 'Anonymous', color: AppColors.whiteColor),
                      horizantal_container(
                          title: 'Interaction', color: AppColors.whiteColor),
                    ],
                  ),
                ),
                SizedBox(height: 13,),
                Row(

                  children: [
                    Expanded(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        horizontalTitleGap: 10,
                        leading: Image.asset(
                            "assets/images/community_engagment_images/music_icon.png"),
                        title: Text(
                          "Brooklyn Simmons", style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          // color: AppColors.blackColor,
                        ),),
                        subtitle: Text("10 min ago", style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          // color: Color(0xff3a3a47),
                        ),),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                            "assets/images/community_engagment_images/share.png",color: Colors.grey,
                            height: 22),
                        SizedBox(width: 8,),
                        Image.asset(
                          "assets/images/community_engagment_images/fav_icon.png",color: Colors.grey,
                          height: 22,),
                        SizedBox(width: 8,),
                        Image.asset(
                          "assets/images/community_engagment_images/v_menu_icon.png",color: Colors.grey,
                          height: 22,),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 13,),
                Text(
                  "Cras proin eu pulvinar pellentesque quam pellen tes que morbi nisi. Blandit integer ultrices.",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    // color: Color(0xff3a3a47),
                  ),),
                SizedBox(height: 10,),
                Image.asset(
                  "assets/images/community_engagment_images/mutting_image.png",
                  width: double.infinity,),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/community_engagment_images/profile_image.png",
                      height: 40,),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                    SizedBox(
                      height: 85,
                      width: MediaQuery.of(context).size.width * 0.70,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 65,
                            width: MediaQuery.of(context).size.width * 0.70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.whiteColor,
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
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.012,vertical: MediaQuery.of(context).size.height * 0.01),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Lorem ipsum", style: GoogleFonts.poppins(
                                        fontSize: MediaQuery.of(context).size.width * 0.041,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff080808),
                                      ),),
                                      Text("20m", style: GoogleFonts.poppins(
                                        fontSize: MediaQuery.of(context).size.width * 0.021,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff080808),
                                      ),),
                                    ],
                                  ),
                                  Text("Lorem ipsum dolor sit dolor.", style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff3a3a47),
                                  ),),

                                ],
                              ),
                            )
                          ),
                          Positioned(
                            top: 50,
                            right: 10,
                            child: Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 3,
                                          offset: Offset(0, 1), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Image.asset("assets/images/community_engagment_images/simple_share_icon.png"),
                                    )),
                                SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                                Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                        borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 3,
                                          offset: Offset(0, 1), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.all(MediaQuery.of(context).size.width * 0.02,),
                                      child: Image.asset("assets/images/community_engagment_images/fav_icon.png"),
                                    )),                              ],
                            ),
                          ),



                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                buildRow(context),
                SizedBox(height: 10,),
                buildRow(context),

              ],
            ),
          ),
        ),

      ),
    );
  }

  Row buildRow(BuildContext context) {
    return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/community_engagment_images/profile_image.png",
                    height: 40,),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                  SizedBox(
                    height: 85,
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Stack(
                      children: <Widget>[
                        Container(
                            height: 65,
                            width: MediaQuery.of(context).size.width * 0.70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.whiteColor,
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
                              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.020),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Lorem ipsum", style: GoogleFonts.poppins(
                                        fontSize: MediaQuery.of(context).size.width * 0.045,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff080808),
                                      ),),
                                      Text("20m", style: GoogleFonts.poppins(
                                        fontSize: MediaQuery.of(context).size.width * 0.021,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff080808),
                                      ),),
                                    ],
                                  ),
                                  Text("Lorem ipsum dolor sit dolor.", style: GoogleFonts.poppins(
                                    fontSize: MediaQuery.of(context).size.width * 0.027,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff3a3a47),
                                  ),),

                                ],
                              ),
                            )
                        ),
                        Positioned(
                          top: 50,
                          right: 10,
                          child: Row(
                            children: [
                              Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 3,
                                        offset: Offset(0, 1), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.011),
                                    child: Image.asset("assets/images/community_engagment_images/simple_share_icon.png"),
                                  )),
                              SizedBox(width: 8,),
                              Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 3,
                                        offset: Offset(0, 1), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.011),
                                    child: Image.asset("assets/images/community_engagment_images/fav_icon.png"),
                                  )),                              ],
                          ),
                        ),



                      ],
                    ),
                  ),


                ],
              );
  }

  horizantal_container({required String title, required Color color}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Text(title, style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff333333),
          ),),
        ),
      ),
    );
  }
}
