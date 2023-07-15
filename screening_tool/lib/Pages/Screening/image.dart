import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreeningImage extends StatelessWidget {
  const ScreeningImage({super.key, required this.path,});

  //this image class which extends a stateless widget takes a string named as path which works as an image path that is to be displayed as an image on the screen 
  final String path;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 300.h,
      color: Colors.white,
      child: Image(
        image: AssetImage(path),
        width: 200.w,
        height: 200.h,
        color: Color(0xffff1a22),
      ),
    );
  }
}


