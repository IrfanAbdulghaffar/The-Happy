import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:thehappy/re_useable_widgets/bottom_navigation.dart';
import 'package:thehappy/re_useable_widgets/custtom_app_bar.dart';
import 'package:thehappy/re_useable_widgets/custtom_button.dart';
import 'package:thehappy/re_useable_widgets/custtom_textform_field.dart';
import 'package:thehappy/screen/auth/signup/screen/second_signup_screen.dart';
import 'package:thehappy/screen/auth/signup/screen/signup_screen.dart';
import 'package:thehappy/screen/auth/splash_screen/splash_screen.dart';
import 'package:thehappy/screen/dashbord/home/screen/home_screen.dart';
import 'package:thehappy/utils/colors.dart';

import 'models/them_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  // Register a user
  await registerUser();

  //Login and get a token
//   String token = await loginUser();

//  // Subscribe to a plan
//   await subscribeToPlan(token);

//   // Get user reviews
//   await getUserReviews(token);

//   // Post a new review
//   await postNewReview(token);

//   // Get all music
//   await getAllMusic();
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

Future<bool> registerUser() async {
  final url = Uri.parse(
      'https://ther-happy.vercel.app/api/register'); // Replace with your actual API endpoint

  // Replace the following with your user registration data
  final userData = {
    'name': 'John Doe',
    'email': 'john.doe@example.com',
    'phone': '1234567890',
    'password': 'securepassword',
    'mental_health_problem': 'none',
    'age_group': '69', // replace with the actual selected issue
  };

  try {
    final response = await http.post(
      url,
      body: jsonEncode(userData),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 201) {
      // Registration successful
      return true;
    } else {
      // Registration failed
      print('Registration failed. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
      return false;
    }
  } catch (error) {
    // Handle any errors that occurred during the request
    print('Error during registration: $error');
    return false;
  }
}
// Future<bool> registerUser() async {
//   try {
//     final response = await http.post(
//       Uri.parse('https://ther-happy.vercel.app/api/users/register'),
//       headers: <String, String>{
//         'Content-Type': 'application/json',
//       },
//       body: jsonEncode(<String, String>{
//         'name': 'saqib aziz',
//         'email': 'saqib@mail.com',
//         'password': '123456',
//         'number': '03459084214',
//         'mental_health_problem': 'none',
//         'age_group': '69',
//       }),
//     );

//     print('Register User Response: ${response.statusCode}');

//     // Check if the registration was successful (you can modify this condition based on your API response)
//     if (response.statusCode == 201) {
//       return true;
//     } else {
//       return false;
//     }
//   } catch (e) {
//     // Handle registration failure
//     print("Registration failed: $e");
//     return false;
//   }
// }

Future<void> subscribeToPlan(String token) async {
  final response = await http.post(
    Uri.parse('https://ther-happy.vercel.app/api/plans/subscribe'),
    headers: <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    },
    body: jsonEncode(<String, dynamic>{
      'token': 'stripe token automatically provided by SDK',
      'price': 75,
    }),
  );

  print('Subscribe to Plan Response: ${response.statusCode}');
}

Future<void> getUserReviews(String token) async {
  final response = await http.get(
    Uri.parse('https://ther-happy.vercel.app/api/reviews'),
    headers: <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    },
  );

  print('Get User Reviews Response: ${response.statusCode}');
  print('User Reviews: ${response.body}');
}

Future<void> postNewReview(String token) async {
  final response = await http.post(
    Uri.parse('https://ther-happy.vercel.app/api/reviews'),
    headers: <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    },
    body: jsonEncode(<String, dynamic>{
      'rating': 5,
      'feedback': 'very good app',
    }),
  );

  print('Post New Review Response: ${response.statusCode}');
}

Future<void> getAllMusic() async {
  final response = await http.get(
    Uri.parse('https://ther-happy.vercel.app/api/music'),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
  );

  print('Get All Music Response: ${response.statusCode}');
  print('Music Data: ${response.body}');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemModel(),
        child: Consumer(
          builder: (context, ThemModel themeModal, child) {
            return GetMaterialApp(
              theme: themeModal.isDark ? ThemeData.dark() : ThemeData.light(),
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
              // home: HomeScreen(),
            );
          },
        ));
  }
}

////////////////////////

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailcontrollerlogin = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Future<String> loginUser() async {
    try {
      final response = await http.post(
        Uri.parse('https://ther-happy.vercel.app/api/users/login'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(<String, String>{
          'email': emailcontrollerlogin.text.trim(),
          'password': passcontroller.text.trim(),
        }),
      );

      print('Login Response: ${response.statusCode}');

      if (response.statusCode == 201) {
        Map<String, dynamic> data = jsonDecode(response.body);
        return data['token'];
      } else {
        print('Login failed. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
        // Handle error and return an appropriate error message
        return 'Login failed. Please check your credentials and try again.';
      }
    } catch (error) {
      // Handle any errors that occurred during the request
      print('Error during login: $error');
      return 'An error occurred during login. Please try again later.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 380,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/auth_images/login_logo.png")),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Login your",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.045,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            " Therhappy Account",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.045,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Or sign up for a new one below to join the Therhappy family!",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.07),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CusttomTextField(
                      validation: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an email address';
                        }
                        // Use a regex pattern for email validation
                        // Adjust the pattern based on your email validation requirements
                        String pattern =
                            r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
                        RegExp regex = RegExp(pattern);
                        if (!regex.hasMatch(value)) {
                          return 'Enter a valid email address';
                        }
                        return null;
                      },
                      controller: emailcontrollerlogin,
                      obscTextTrue: false,
                      hintText: "Enter your email address",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Password",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CusttomTextField(
                      controller: passcontroller,
                      obscTextTrue: false,
                      hintText: "Enter password",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Forgot your password?",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      height: 60.0,
                      width: MediaQuery.of(context).size.width,
                      onTap: () async {
                        String token = await loginUser();

                        if (token.isNotEmpty &&
                            _formKey.currentState!.validate()) {
                          navigator!.push(MaterialPageRoute(
                              builder: (context) =>
                                  BottomNavigationBarScreen()));
                          // Get.to(() => BottomNavigationBarScreen());
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Success!")));
                          // Login successful, proceed to the next screen
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Error in Data")));
                          // Display an error message to the user
                          print('Error: $token');
                        }
                      },
                      borderRadius: BorderRadius.circular(10),
                      bacckcolor: AppColors.primaryColor,
                      text: "Login",
                      textcolorrr: AppColors.blackColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Need a new account? ",
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.045,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => SignupScreen());
                          },
                          child: Text(
                            "Sign up",
                            style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.045,
                                fontWeight: FontWeight.w500,
                                color: AppColors.primaryColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

////////////////////// register user
///
///
class SignupScreen extends StatefulWidget {
  final String? selectedAge;
  const SignupScreen({Key? key, this.selectedAge}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusttomAppBar().custtom_app_bar(title: 'Sign Up'),
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
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Create your",
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.045,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      " Therhappy Account",
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.045,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Name",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    // color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CusttomTextField(
                  controller: namecontroller,
                  obscTextTrue: false,
                  hintText: "Enter your full name",
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Email",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    // color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CusttomTextField(
                  controller: emailcontroller,
                  obscTextTrue: false,
                  hintText: "Enter your email address",
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Phone number",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    // color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CusttomTextField(
                  controller: phonecontroller,
                  obscTextTrue: false,
                  hintText: "Enter your phone number",
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Create password",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    // color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CusttomTextField(
                  controller: passwordcontroller,
                  obscTextTrue: false,
                  hintText: "Create a password",
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Confirm password",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    // color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CusttomTextField(
                  obscTextTrue: false,
                  hintText: "Re-enter your password",
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  height: 60.0,
                  width: MediaQuery.of(context).size.width,
                  onTap: () async {
                    Navigator.pushReplacement(context,
                      MaterialPageRoute(
                        builder: (_) => SecondSignupScreen(
                          name: namecontroller.text.trim(),
                          email: emailcontroller.text.trim(),
                          password: passwordcontroller.text.trim(),
                          phone: phonecontroller.text.trim(),
                          selectedagebyuser: widget.selectedAge,
                        ),
                      ),
                    );

                    // Get.to(() => const SecondSignupScreen());
                  },
                  borderRadius: BorderRadius.circular(10),
                  bacckcolor: AppColors.primaryColor,
                  text: "Next",
                  textcolorrr: AppColors.blackColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have a account? ",
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.045,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => LoginScreen());
                      },
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.045,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
///////////////////////// secound signup screen

enum Issue {
  Anxiety,
  Motivation,
  Confidence,
  Sleep,
  Depression,
  WorkStress,
  Relationships,
  ExamStress,
  Pregnancy,
  Loss,
  Stress,
  LowEnergy,
  Performance,
  PTSD,
  LowMood,
  PanicIssues,
}

class SecondSignupScreen extends StatefulWidget {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String? selectedagebyuser;
  const SecondSignupScreen(
      {Key? key,
      required this.name,
      required this.email,
      required this.password,
      required this.phone,
      this.selectedagebyuser})
      : super(key: key);

  @override
  State<SecondSignupScreen> createState() => _SecondSignupScreenState();
}

class _SecondSignupScreenState extends State<SecondSignupScreen> {
  Issue? selectIssue;
  @override
  void initState() {
    setState(() {
      selectIssue = Issue.Anxiety;
    });
  }

  Future<bool> registerUser() async {
    final url = Uri.parse(
        'https://ther-happy.vercel.app/api/users/register'); // Replace with your actual API endpoint

    // Replace the following with your user registration data
    final userData = {
      'name': widget.name,
      'email': widget.email,
      'number': widget.phone,
      'password': widget.password,
      'mental_health_problem': selectIssue.toString().split('.').last,
      'age_group':
          widget.selectedagebyuser, // replace with the actual selected issue
    };

    try {
      final response = await http.post(
        url,
        body: jsonEncode(userData),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 201) {
        CircularProgressIndicator();
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Success!")));

        Get.to(() => BottomNavigationBarScreen());
        // Registration successful
        return true;
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Registration failed")));
        // Registration failed
        print('Registration failed. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
        return false;
      }
    } catch (error) {
      // Handle any errors that occurred during the request
      print('Error during registration: $error');
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusttomAppBar().custtom_app_bar(title: 'Sign Up'),
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
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Select the mental health issues you need Therhappy for",
                  style: GoogleFonts.poppins(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Helps us give you customized care!",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    // color: Color(0xff121b22),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    //
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.Anxiety;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/anixtystrees.png',
                        title: 'Anxiety',
                        color: selectIssue == Issue.Anxiety
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.Motivation;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/motvlowenergy.png',
                        title: 'Motivation',
                        color: selectIssue == Issue.Motivation
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.Confidence;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/conf_perform.png',
                        title: 'Confidence',
                        color: selectIssue == Issue.Confidence
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.Sleep;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/sleep.png',
                        title: 'Sleep',
                        color: selectIssue == Issue.Sleep
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          onTap:
                          selectIssue = Issue.Depression;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/dep_lowmode.png',
                        title: 'Depression',
                        color: selectIssue == Issue.Depression
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.WorkStress;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/work_strees.png',
                        title: 'Work Stress',
                        color: selectIssue == Issue.WorkStress
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.LowEnergy;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/motvlowenergy.png',
                        title: 'Low Energy',
                        color: selectIssue == Issue.LowEnergy
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.ExamStress;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/exam_panic.png',
                        title: 'Exam Stress',
                        color: selectIssue == Issue.ExamStress
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.Pregnancy;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/prag.png',
                        title: 'Pregnancy',
                        color: selectIssue == Issue.Pregnancy
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.Loss;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/loos.png',
                        title: 'Loss',
                        color: selectIssue == Issue.Loss
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.Stress;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/anixtystrees.png',
                        title: 'Stress',
                        color: selectIssue == Issue.Stress
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.Relationships;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/relation.png',
                        title: 'Relationships',
                        color: selectIssue == Issue.Relationships
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.Performance;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/conf_perform.png',
                        title: 'Performance',
                        color: selectIssue == Issue.Performance
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.PTSD;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/sleep.png',
                        title: 'PTSD',
                        color: selectIssue == Issue.PTSD
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.LowMood;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/dep_lowmode.png',
                        title: 'Low Mood',
                        color: selectIssue == Issue.LowMood
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIssue = Issue.PanicIssues;
                        });
                      },
                      child: mental_health_container(
                        image: 'assets/images/auth_images/exam_panic.png',
                        title: 'Panic Issues',
                        color: selectIssue == Issue.PanicIssues
                            ? AppColors.primaryColor
                            : AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  height: 60.0,
                  width: MediaQuery.of(context).size.width,
                  onTap: () async {
                    await registerUser();
                    // You can navigate to the next screen or perform any other action here

                    //Get.to(()=>BottomNavigationBarScreen());
                  },
                  borderRadius: BorderRadius.circular(10),
                  bacckcolor: AppColors.primaryColor,
                  text: "Complete Sign Up",
                  textcolorrr: AppColors.blackColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have a account?",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => LoginScreen());
                      },
                      child: Text(
                        " Sign in",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container mental_health_container(
      {required String image, required String title, required Color color}) {
    return Container(
      // height: 46,
      // width: 167,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(66),
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
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.030),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image,
              height: 24,
              width: 24,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.width * 0.040,
                fontWeight: FontWeight.w500,
                color: Color(0xff121b22),
              ),
            )
          ],
        ),
      ),
    );
  }
}
