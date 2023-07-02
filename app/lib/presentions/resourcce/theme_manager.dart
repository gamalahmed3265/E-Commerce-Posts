import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF843667);
const kSecondaryColor = Color(0xFF022238);
const kThirdColor = Color(0xFFFFDCBC);
const kLightBackground = Color(0xFFE8F6FB);
const kWhiteColor = Colors.white;
const kBlackColor = Colors.black;

final BoxShadow boxShadow = BoxShadow(
    offset: const Offset(0, 6),
    color: Colors.black.withOpacity(0.1),
    blurRadius: 8,
    spreadRadius: 2);

class AppTheme {
  static const kBigTitle = TextStyle(
    color: kWhiteColor,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static const kHeadingOne = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const kSeeAllText = TextStyle(color: kPrimaryColor);

  static final kBodyText = TextStyle(
    color: Colors.grey.shade500,
    fontSize: 12,
  );

  static const kCardTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}
