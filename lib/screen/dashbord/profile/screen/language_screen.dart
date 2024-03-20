import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../re_useable_widgets/custtom_app_bar.dart';
class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCusttomAppBar().second_custtom_app_bar(
          title: "Language"),
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
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon:  Icon(Icons.search,color: Color(0xff928E8B),size: 35,),
                        hintText: "Search Language",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            // color: Color(0xff393838),
                        ),
                        border: InputBorder.none
                    ),
                  ),
                  Divider(thickness: 1,color: Color(0xffB1B1B1),),
                  SizedBox(width: 20,),
                ],
              ),
            ),
          )
      ),
    );
  }
}