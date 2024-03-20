import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/dashbord/home/screen/aI_trait_and_tone_selection.dart';
import '../screen/dashbord/calm/screen/calm_screen.dart';
import '../screen/dashbord/home/screen/home_screen.dart';
import '../screen/dashbord/profile/screen/profile_screen.dart';
import '../screen/dashbord/search/screen/search_screen.dart';
import '../utils/colors.dart';
class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);
  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}
class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  // final controller = Get.put(SignUpController());
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    AlTraitAndToneSelection(),
    CalmScreen(),
    ProfileScreen(),

  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(20.0),
        //   topRight: Radius.circular(20.0),
        // ),

        // borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0), ),
        child: BottomNavigationBar(
          // backgroundColor: Color(0xffF2F2F2),
          // unselectedIconTheme: IconThemeData(
          //     color: Colors.grey
          // ),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/home_screen_images/Home.png",),
              ),
              label: 'Home',
              backgroundColor: AppColors.primaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/home_screen_images/search.png",),
              ),
              label: 'Search',
              backgroundColor: AppColors.primaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/home_screen_images/b_n_logo.png",),
              color: Colors.white,
              ),
              label: 'Therhappy',
              backgroundColor: AppColors.primaryColor,
            ),
            // BottomNavigationBarItem(
            //
            //   icon: ImageIcon(AssetImage("assets/images/home_screen_images/b_n_logo.png",),
            //   label: 'Therhappy',
            // ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/home_screen_images/claim.png",),
              ),
              label: 'Calm',
              backgroundColor: AppColors.primaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/home_screen_images/profile.png",),
              ),
              label: 'Profile',
              backgroundColor: AppColors.blackColor,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.primaryColor,
          onTap: _onItemTapped,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: InkWell(
            onTap: (){
              Get.to(()=>AlTraitAndToneSelection());
            },
            child: Container(
              height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage("assets/images/home_screen_images/b_n_logo.png")
                  )
                ),
               ),),
      ),
    );
  }
}