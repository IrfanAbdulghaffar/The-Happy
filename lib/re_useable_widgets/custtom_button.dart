import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class CustomButton extends StatelessWidget {
  CustomButton({this.text, this.onTap, this.bacckcolor,
    this.textcolorrr, this.height, this.width,required this.borderRadius, this.gradient,
    this.borderr, required this.fontSize, this.fontWeight,this.iconcolor
  }) ;
  final text;
  final onTap;
  final bacckcolor;
  final textcolorrr;
  final height;
  final width;
  final borderRadius;
  final gradient;
  final borderr;
  final fontSize;
  final fontWeight;
  final iconcolor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child:
      Container(
        height: height,
        width:width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          gradient: gradient,
          color: bacckcolor,
          border: borderr,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child:  Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'SF-Pro-Text',
              color: textcolorrr,
              fontSize: fontSize,
              fontWeight: fontWeight,
              height: 22/18,
            ),
            // style: TextStyle(
            //     fontFamily: 'SF-Pro-Text',
            //     color: textcolorrr,
            //     fontSize: fontSize,
            //     fontWeight: fontWeight),
          ),
        ),
      ),
    );
  }
}
