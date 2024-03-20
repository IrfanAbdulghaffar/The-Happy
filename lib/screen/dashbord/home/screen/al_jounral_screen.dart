import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../re_useable_widgets/custtom_app_bar.dart';
import '../../../../utils/colors.dart';

class AlJounralScreen extends StatelessWidget {
  const AlJounralScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCusttomAppBar().second_custtom_app_bar(
          title: "AI Journal"),
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
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(50),
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
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 10),
                          hintText: "Search Entries",
                          hintStyle: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff5e5e5e),
                          ),
                          prefixIcon: Icon(Icons.search,color: Color(0xff928E8B),size: 35,),
                          suffixIconColor: Colors.black,
                          prefixIconColor: Colors.black,
                          border: InputBorder.none

                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Journals",style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff313131),
                      ),),
                      Icon(Icons.more_horiz,size: 40,)
                    ],
                  ),
                  SizedBox(height: 25,),
                  Image.asset("assets/images/home_screen_images/al_jonral_image.png",
                  height: MediaQuery.of(context).size.height * 0.38,
                  ),
                  SizedBox(height: 15,),
                  buildListTile(title: 'November 15', subtitle: '10:00 pm'),
                  buildListTile(title: 'November 14', subtitle: '10:00 pm'),
                  buildListTile(title: 'November 13', subtitle: '10:00 pm'),


                ],
              ),
            ),
          )
      ),
    );
  }

  ListTile buildListTile({required String title,required String subtitle}) {
    return ListTile(
                  title: Text(title,style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff313131),
                  ),),
                  subtitle: Text(subtitle,style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6b6b6b),
                  ),),
                  trailing: Icon(Icons.arrow_forward_ios)
                );
  }
}
