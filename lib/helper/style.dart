import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget svgPostIcons(String path) {
  return SizedBox(
    height: 24,
    width: 24,
    child: SvgPicture.asset(
      path,
    ),
  );
}

Widget svgSearchIcon(String path) {
  return SizedBox(
    height: 50,
    width: 25,
    child: SvgPicture.asset(
      path,
    ),
  );
}

TextStyle get boldTitle {
  return const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
}
