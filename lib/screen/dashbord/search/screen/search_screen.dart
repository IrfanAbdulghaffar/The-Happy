import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../re_useable_widgets/custtom_app_bar.dart';
import '../../../../utils/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondCusttomAppBar().second_custtom_app_bar(
          title: "Search"),
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    contentPadding: EdgeInsets.only(top: 6),
                      hintText: "Search",
                      hintStyle: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.w200,
                        color: Color(0xff535353),
                      ),
                      prefixIcon: Icon(Icons.search,color: Color(0xff928E8B),size: 35,),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset("assets/images/search_screen_images/search_music_icon.png"),
                      ),
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
                      Text("Recent Search",style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),),
                      Text("View all",style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xfff87676),
                      ),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  buildRowTextformfield(title: 'Pizza Restaurant'),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  SizedBox(height: 20,),
                  buildRowTextformfield(title: 'Shopping Mall'),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  SizedBox(height: 20,),
                  buildRowTextformfield(title: 'My College'),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Search Nearby",style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),
                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildContainerItem(title: 'Parking', image: 'assets/images/search_screen_images/car_icon.png', color: Color(0xff81D1FF)),
                        // SizedBox(width: 10,),
                        buildContainerItem(title: 'Gas Station', image: 'assets/images/search_screen_images/gas_station.png', color: Color(0xff9CEF8E)),
                        // SizedBox(width: 10,),
                        buildContainerItem(title: 'Restaurant', image: 'assets/images/search_screen_images/resturant.png', color: Color(0xffF9C758)),
                        // SizedBox(width: 10,),
                        buildContainerItem(title: 'Cinema', image: 'assets/images/search_screen_images/cinima.png', color: Color(0xffFA7862)),
                        // SizedBox(width: 10,),
                        buildContainerItem(title: 'Shopping Centers', image: 'assets/images/search_screen_images/shopping_cart.png', color:Color(0xffB37EDC)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // height: 154,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image.asset("assets/images/search_screen_images/star_icon.png",height: 30,),
                            title: Text("Favorite",style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7e7e7e),
                            ),),
                          ),
                          ListTile(
                            leading: Image.asset("assets/images/search_screen_images/home_icon.png",height: 30,),
                            title: Text("Home",style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7e7e7e),
                            ),),
                          ),
                          ListTile(
                            leading: Image.asset("assets/images/search_screen_images/work_icon.png",height: 30,),
                            title: Text("Work",style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7e7e7e),
                            ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 80,),

                ],
              ),
            ),
          )
      ),
    );
  }

  Container buildContainerItem({required String title,required String image,required Color color}) {
    return Container(
      height: 100,
      width: 80,
      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: color
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(image),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(title,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff636363),
                          ),),
                        ],
                      ),
    );
  }

  Row buildRowTextformfield({required String title}) {
    return
      Row(
                  children: [
                    Icon(Icons.search,color: Color(0xff928E8B),size: 35,),
                    SizedBox(width: 20,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: title,
                            hintStyle: GoogleFonts.inter(
                              fontSize: 24,
                              fontWeight: FontWeight.w200,
                              color: Color(0xff535353),
                            ),
                            suffixIconColor: Colors.black,
                            prefixIconColor: Colors.black,
                            border: InputBorder.none

                        ),
                      ),
                    ),
                  ],
                );
  }
}
