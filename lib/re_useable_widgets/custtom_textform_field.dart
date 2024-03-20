import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';

class CusttomTextField extends StatelessWidget {
  var icon,suffixIcon;
  String? hintText;
  final obscTextTrue;
  var validation;
  var onSave;
  var controller;
  CusttomTextField({
    this.icon,
    this.suffixIcon,
    this.controller,
    this.hintText,
    // this.onSave,
    this.validation,
    this.obscTextTrue
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1.5,color: Color(0xffE1E1E1))

        ),
        child: TextFormField(
          validator: validation,
          controller: controller,
          obscureText: obscTextTrue,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor,
              ),
              prefixIcon: icon,
              suffixIcon: suffixIcon,
              suffixIconColor: Colors.black,
              prefixIconColor: Colors.black,
              border: InputBorder.none

          ),
        ),
      );
  }
}

