import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension IntegerExtension on int {
  // Height
  SizedBox get rH => SizedBox(height: toDouble().h); //real Height
  SizedBox get nH => SizedBox(height: toDouble()); // normal Height

  // Width
  SizedBox get rW => SizedBox(width: toDouble().w); //real Width
  SizedBox get nW => SizedBox(width: toDouble()); // normal Width
}
