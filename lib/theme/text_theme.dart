import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

Widget text_28_700(String? value,
    {Color color = textColor, TextAlign? textAlign}) {
  return Text(value ?? "",
      textAlign: textAlign,
      style: GoogleFonts.playfairDisplay(
          color: color, fontWeight: FontWeight.w700, fontSize: 28));
}

Widget text_24_700(String? value,
    {Color color = textColor,
    TextAlign? textAlign,
    double fontSize = 24,
    int? maxLines = 2}) {
  return Text(value ?? "",
      maxLines: maxLines,
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
          color: color, fontWeight: FontWeight.w700, fontSize: fontSize));
}

Widget text_20_700(String? value,
    {Color color = textColor, TextAlign? textAlign}) {
  return Text(value ?? "",
      style: GoogleFonts.poppins(
          color: color, fontWeight: FontWeight.w700, fontSize: 20));
}


Widget text_18_700(String? value, {Color color = textColor,TextAlign? textAlign}) {
  return Text(value ?? "",
    style: GoogleFonts.poppins(
        color: color, fontWeight: FontWeight.w700, fontSize: 18),textAlign: textAlign,);
}

Widget text_18_500(String? value, {Color color = textColor}) {
  return Text(value ?? "",
      style: GoogleFonts.poppins(
          color: color, fontWeight: FontWeight.w500, fontSize: 18));
}

Widget text_18_400(String? value, {Color color = textColor}) {
  return Text(value ?? "",
      style: GoogleFonts.poppins(
          color: color, fontWeight: FontWeight.w400, fontSize: 18));
}

Widget text_16_700(String? value, {Color color = textColor, int? maxLines}) {
  return Text(value ?? "",
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
          color: color, fontWeight: FontWeight.w700, fontSize: 16));
}

Widget text_16_600(String? value, [Color color = textColor]) {
  return Text(value ?? "",
      style: GoogleFonts.poppins(
          color: color, fontWeight: FontWeight.w600, fontSize: 16));
}

Widget text_16_500(String? value,
    {Color color = textColor, TextAlign? textAlign,}) {
  return Text(value ?? "",
    textAlign: textAlign,
    style: GoogleFonts.poppins(
      color: color, fontWeight: FontWeight.w500, fontSize: 16,),);
}

Widget text_16_400(String? value,
    {Color color = textColor,
    TextAlign? textAlign,
    double fontSize = 16,
    int? maxLines = 3}) {
  return Text(
    value ?? "",
    maxLines: maxLines,
    overflow: maxLines == null ? null : TextOverflow.ellipsis,
    style: GoogleFonts.poppins(
        color: color, fontWeight: FontWeight.w400, fontSize: fontSize),
    textAlign: textAlign,
  );
}

Widget text_16_300(String? value, {Color color = textColor}) {
  return Text(value ?? "",
      style: GoogleFonts.poppins(
          color: color, fontWeight: FontWeight.w300, fontSize: 16));
}

Widget text_14_600(String? value, {Color color = textColor,TextAlign? textAlign,}) {
  return Text(value ?? "",
    style: GoogleFonts.poppins(
        color: color, fontWeight: FontWeight.w600, fontSize: 14), textAlign: textAlign,);
}



Widget text_14_500(String? value, {Color color = textColor,TextAlign? textAlign,}) {
  return Text(value ?? "",
    style: GoogleFonts.poppins(
        color: color, fontWeight: FontWeight.w500, fontSize: 14
    ),textAlign: textAlign,);
}

Widget text_14_400(String? value, {Color? color , FontWeight? fontWeight, double? fontSize}) {
  return Text(value ?? "",
      style: GoogleFonts.poppins(
          color: color ?? textColor, fontWeight: fontWeight ?? FontWeight.w400, fontSize: fontSize ?? 14));
}

Widget text_12_600(String? value, {Color color = textColor}) {
  return Text(
    value ?? "",
    style: GoogleFonts.poppins(
        color: color, fontWeight: FontWeight.w600, fontSize: 12),
    overflow: TextOverflow.ellipsis,
  );
}

Widget text_12_500(String? value, {Color color = textColor}) {
  return Text(
    value ?? "",
    style: GoogleFonts.poppins(
        color: color, fontWeight: FontWeight.w500, fontSize: 12),
    overflow: TextOverflow.ellipsis,
  );
}

Widget text_12_400(String? value, {Color color = textColor,TextAlign? textAlign,}) {
  return Text(
    value ?? "",
    style: GoogleFonts.poppins(
        color: color, fontWeight: FontWeight.w400, fontSize: 12),
    textAlign: textAlign,
  );
}

Widget text_10_400(String? value, {Color color = textColor}) {
  return Text(value ?? "",
      style: GoogleFonts.poppins(
          color: color, fontWeight: FontWeight.w400, fontSize: 10));
}


Widget richTextResend() {
  return RichText(
    text: TextSpan(
      text: 'Didn’t receive any code?',
      style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500, fontSize: 14, color: textColor),
      children:  <TextSpan>[
        TextSpan(
            text: ' Resend',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700, fontSize: 14, color: orangeColor),
            recognizer: TapGestureRecognizer()..onTap = (){
              //TODO: Hit resend api
            }
        ),
      ],
    ),
    textAlign: TextAlign.center,
  );
}

Widget richTextTerms() {
  return RichText(
    text: TextSpan(
      text: 'By clicking Register, you accept our ',
      style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500, fontSize: 14, color: textColor),
      children:  <TextSpan>[
        TextSpan(
            text: 'Term of Use. ',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500, fontSize: 14, color: primaryColor, decoration: TextDecoration.underline,),

            recognizer: TapGestureRecognizer()..onTap = (){
              //TODO: Hit api
            }
        ),
        TextSpan(
          text: 'Find out about our ',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500, fontSize: 14, color: primaryColor,),
        ),
        TextSpan(
            text: 'Privacy and Cookies Policy',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500, fontSize: 14, color: primaryColor, decoration: TextDecoration.underline,),
            recognizer: TapGestureRecognizer()..onTap = (){
              //TODO: Hit resend api
            }
        ),
      ],
    ),
    textAlign: TextAlign.center,
  );
}

