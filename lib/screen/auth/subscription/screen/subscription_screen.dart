import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thehappy/main.dart';
import 'package:thehappy/re_useable_widgets/custtom_app_bar.dart';
import 'package:thehappy/screen/auth/signup/screen/signup_screen.dart';

import '../../../../utils/colors.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  Future<void> subscribeToPlan(String stripeToken, String paymentMethod) async {
    try {
      var url;
      var body;

      if (paymentMethod == 'card') {
        // Subscribe with credit card
        url = Uri.parse('https://ther-happy.vercel.app/api/plans/subscribe');
        body = jsonEncode(<String, dynamic>{
          'token': stripeToken,
          'price': 75,
        });
      } else if (paymentMethod == 'paypal') {
        // Subscribe with PayPal
        url = Uri.parse(
            'https://ther-happy.vercel.app/api/plans/subscribe/paypal');
        body = jsonEncode(<String, dynamic>{
          'amount': 100,
        });
      } else {
        // Handle other payment methods if needed
        return;
      }

      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $stripeToken',
        },
        body: body,
      );

      if (response.statusCode == 200) {
        // Subscription successful, handle accordingly
        print('Subscribe to Plan Response: ${response.statusCode}');
      } else {
        // Subscription failed, handle accordingly
        print('Subscribe to Plan Failed: ${response.statusCode}');
        print('Response Body: ${response.body}');
      }
    } catch (error) {
      // Handle any exceptions during the API call
      print('Error during API call: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusttomAppBar().custtom_app_bar(title: 'Subscription'),
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
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.07),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pick a Plan OR Start with Basic",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(26)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "\$70.50",
                            style: GoogleFonts.poppins(
                                fontSize: 36,
                                fontWeight: FontWeight.w700,
                                color: AppColors.blackColor
                                // fontStyle: FontStyle.italic,
                                ),
                          ),
                          Text(
                            "/Per year",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Annual plan",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () async {
                          await subscribeToPlan(
                            'pk_test_51NJL1pKPJ5HnuJJxutsJ61JBHoTNScMvxzF55sl57UZZtnGVHPaMKTZL8Ks5gRDHVLeUcc6ere4Bd3CVxN6ATgfK00W2t6prmI',
                            'card',
                          );

                          //Get.to(() => SignupScreen());
                        },
                        child: Container(
                          height: 44,
                          width: 157,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(66),
                              border: Border.all(
                                  width: 1.5, color: AppColors.blackColor)),
                          child: Center(
                            child: Text(
                              "Subscribe Now!",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackColor
                                  // fontStyle: FontStyle.italic,
                                  // color: Colors.grey,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        "Annual plan",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                buying_container(
                    price: '\$16.50',
                    time: '\$18.1',
                    subPlan: 'Monthly Plan',
                    context: context),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () async {
                    await subscribeToPlan(
                      'your_token', // Provide the appropriate PayPal token here
                      'paypal',
                    );
                  },
                  child: buying_container(
                      price: '\$130.50',
                      time: '\$180.1',
                      subPlan: 'Lifetime Subscription',
                      context: context),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  "Start with basic",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    // color: AppColors.blackColor,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Read Terms & Conditions",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buying_container(
      {required BuildContext context,
      required String price,
      required String time,
      required String subPlan}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(26),
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
        padding: EdgeInsets.symmetric(
            vertical: 25, horizontal: MediaQuery.of(context).size.width * 0.04),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          price,
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                              color: AppColors.blackColor),
                        ),
                        Text(
                          time,
                          style: GoogleFonts.poppins(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      subPlan,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 34,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66),
                      border:
                          Border.all(width: 1.5, color: AppColors.blackColor)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.008,
                          vertical: 5),
                      child: Text(
                        "Buy Now!",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          // fontStyle: FontStyle.italic,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
