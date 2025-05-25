import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyle {
  TextStyle get bodyLgBold;
  TextStyle get bodyLgMedium;
  TextStyle get bodyMdMedium;
  TextStyle get titleLgBold;
  TextStyle get titleMdMedium;
  TextStyle get titleSmBold;
}

class LargeAppTextStyle implements AppTextStyle {
  const LargeAppTextStyle();

  @override
  TextStyle get bodyLgBold =>
      GoogleFonts.inter().copyWith(fontSize: 16, fontWeight: FontWeight.bold);

  @override
  TextStyle get bodyLgMedium =>
      GoogleFonts.inter().copyWith(fontSize: 16, fontWeight: FontWeight.w600);

  @override
  TextStyle get bodyMdMedium =>
      GoogleFonts.inter().copyWith(fontSize: 14, fontWeight: FontWeight.w400);

  @override
  TextStyle get titleLgBold =>
      GoogleFonts.inter().copyWith(fontSize: 40, fontWeight: FontWeight.bold);

  @override
  TextStyle get titleMdMedium =>
      GoogleFonts.inter().copyWith(fontSize: 14, fontWeight: FontWeight.w400);

  @override
  TextStyle get titleSmBold =>
      GoogleFonts.inter().copyWith(fontSize: 16, fontWeight: FontWeight.w400);
}

class SmallAppTextStyle implements AppTextStyle {
  const SmallAppTextStyle();

  @override
  TextStyle get bodyLgBold =>
      GoogleFonts.inter().copyWith(fontSize: 14, fontWeight: FontWeight.bold);

  @override
  TextStyle get bodyLgMedium =>
      GoogleFonts.inter().copyWith(fontSize: 14, fontWeight: FontWeight.w500);

  @override
  TextStyle get bodyMdMedium =>
      GoogleFonts.inter().copyWith(fontSize: 12, fontWeight: FontWeight.w500);

  @override
  TextStyle get titleLgBold =>
      GoogleFonts.inter().copyWith(fontSize: 24, fontWeight: FontWeight.bold);

  @override
  TextStyle get titleMdMedium =>
      GoogleFonts.inter().copyWith(fontSize: 14, fontWeight: FontWeight.w500);

  @override
  TextStyle get titleSmBold =>
      GoogleFonts.inter().copyWith(fontSize: 16, fontWeight: FontWeight.w500);
}
