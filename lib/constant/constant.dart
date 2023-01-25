import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//padding and margin

var kPaddingMargin = EdgeInsets.all(20);

var backGroundColor = Color(0xff188F79);
var loginBackGroundColor = Color(0xffFFFFFF);

var splashScreenBottonColor = Color(0xff188F79);

ButtonStyle btnStyle(Color textColor, Color bgColor) {
  return ButtonStyle(
    foregroundColor: MaterialStateProperty.all(textColor),
    backgroundColor: MaterialStateProperty.all(bgColor),
  );
}

// Theme
TextTheme textTheme = TextTheme(
  headline1: GoogleFonts.roboto(
      fontSize: 48, fontWeight: FontWeight.w700, color: Colors.white),
  headline2: GoogleFonts.roboto(
    fontSize: 30,
    fontWeight: FontWeight.w900,
  ),
  headline3: GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
  headline4: GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
  headline5: GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
  headline6: GoogleFonts.roboto(
      fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
  subtitle2: GoogleFonts.roboto(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff188F79)),
  bodyText2: GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.poppins(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.poppins(
      fontSize: 8, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);
