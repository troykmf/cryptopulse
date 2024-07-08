import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle({
  required double size,
  required FontWeight fw,
  required Color color,
}) {
  return GoogleFonts.montserrat(
    fontSize: size,
    fontWeight: fw,
    color: color,
  );
}
