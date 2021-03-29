import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color primaryColor = Color(0xFF0895BA);
final Color secondaryColor = Color(0xFF0024AF);
final Color disableGrayColor = Color(0xFFEFEFEF);
final Color disableButtonTexColor = Color(0xFF9A9A9A);
final Color grayTextColor = Color(0xFFB2B2B2);
final Color darkGrayTextColor = Color(0xFF555555);

TextStyle blackReguler = GoogleFonts.roboto()
    .copyWith(color: Colors.black, fontWeight: FontWeight.w400);
TextStyle whiteReguler = GoogleFonts.roboto()
    .copyWith(color: Colors.white, fontWeight: FontWeight.w400);
TextStyle primaryReguler = GoogleFonts.roboto()
    .copyWith(color: primaryColor, fontWeight: FontWeight.w400);
TextStyle secondaryReguler = GoogleFonts.roboto()
    .copyWith(color: secondaryColor, fontWeight: FontWeight.w400);
TextStyle disableReguler = GoogleFonts.roboto()
    .copyWith(color: disableGrayColor, fontWeight: FontWeight.w400);