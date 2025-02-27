import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppWidget{

   Color primaryColor = Color(0xFF4FAD5A);
   Color whiteColor = Colors.white;
   Color blackColor = Colors.black;
   Color greyColor = Color(0xFF9C9C9C);
   Color greyD9Color = Color(0xFFD9D9D9);
   Color grey500Color = Colors.grey.shade500;
   Color black33Color = Color(0xFF333333);
   Color recColor = Color(0xFFF2F2F2);
   Color yellowColor = Color(0xFFFFC107);
   Color redColor = Color(0xFFCE2D2D);
   Color orangeColor = Color(0xFFFF6E07);
   Color lightRedColor = Color(0xFFF25746);

   double screenHeight = PlatformDispatcher.instance.views.first.physicalSize.height /
       PlatformDispatcher.instance.views.first.devicePixelRatio;
   double screenWidth = PlatformDispatcher.instance.views.first.physicalSize.width /
       PlatformDispatcher.instance.views.first.devicePixelRatio;


   double fixPadding = 10.0;

  SizedBox heightSpace = SizedBox(height: 10.0);
  SizedBox height5Space = SizedBox(height: 5.0);
  SizedBox widthSpace = SizedBox(width: 10.0);
  SizedBox width5Space = SizedBox(width: 5.0);

   SizedBox widthBox(double width) => SizedBox(width: width);
   SizedBox heightBox(double height) => SizedBox(height: height);

   List<BoxShadow> boxShadow = [
     BoxShadow(
       color: Colors.black.withOpacity(0.2),
       blurRadius: 6.0,
     )
   ];


   static TextStyle boldTextFieldStyle(){
    return TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
    );
  }

  static TextStyle headLineTextFieldStyle(){
    return TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
    );
  }

  static TextStyle customHeadLineTextFieldStyle(Color color,double size){
    return TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
    );
  }

  static TextStyle LightTextFieldStyle(){
    return TextStyle(
        color: Colors.black54,
        fontSize: 15,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins'
    );
  }

  static TextStyle semiBoldTextFieldStyle(){
    return TextStyle(
        color: Colors.black54,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
    );
  }

  static TextStyle colorsemiBoldTextFieldStyle(){
    return TextStyle(
        color: Color(0xFF68a8f1),
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
    );

  }

  static TextStyle FeedPageTextFieldStyle(Color color){
    return TextStyle(
        color: color,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
    );
  }

  static TextStyle postUserTextFieldStyle(){
    return TextStyle(
      color: Colors.blue.shade300,
      fontFamily: 'Poppins',
      fontSize: 20,
    );
  }

  static TextStyle descriptionTextFieldStyle(){
    return TextStyle(
      color: Colors.black87,
      fontFamily: 'Poppins',
      fontSize: 16,
    );
  }

  static TextStyle postStyle1(Color color){
    return TextStyle(
      color: color,   //  Colors.black54, Colors.black,
      fontFamily: 'Poppins',
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle homepage1(Color color,double size){
    return GoogleFonts.bungee(
      color:  color,
      fontSize: size,
    );
  }

  static TextStyle FeatureText(Color color,double size){
    return GoogleFonts.orbitron(
      color:  color,
      fontSize: size,
    );
  }

  static TextStyle FeatureTextBold(Color color,double size){
    return GoogleFonts.orbitron(
      color:  color,
      fontSize: size,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle brandNameText(Color color,double size){
    return GoogleFonts.cormorant(
      color:  color,
      fontSize: size,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle ModelNameText(Color color,double size){
    return GoogleFonts.sarabun(
      color:  color,
      fontSize: size,
      fontWeight: FontWeight.bold,
    );
  }

   static TextStyle QuickSandGrey(){
     return GoogleFonts.quicksand(
       color: Colors.grey[500],
     );
   }

   static TextStyle QuickSandGreySize(double x){
     return GoogleFonts.quicksand(
     fontSize: x,
       color: Colors.grey[500],
     );
   }

   static TextStyle QuickSandGreenSize(double x){
     return GoogleFonts.quicksand(
       fontSize: x,
       color: Color(0xFF4FAD5A),
     );
   }

   static TextStyle QuickSandBlackSize(double x){
     return GoogleFonts.quicksand(
       fontSize: x,
       color: Colors.black,
     );
   }

   static TextStyle QuickSandWhiteSize(double x){
     return GoogleFonts.quicksand(
       fontSize: x,
       color: Colors.white,
     );
   }

   static TextStyle QuickSandBlackBoldHeadline(){
     return GoogleFonts.quicksand(
       color: Colors.black,
       fontWeight: FontWeight.bold,
       fontSize: 18,
     );
   }

   TextStyle extrabold30White =
   TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w800);

   TextStyle extrabold28White =
   TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.w800);

   TextStyle extrabold18White =
   TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w800);

   TextStyle extrabold16White =
   TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w800);

   TextStyle extrabold14Primary =
   TextStyle(color: Color(0xFF4FAD5A), fontSize: 14.0, fontWeight: FontWeight.w800);

   TextStyle bold20Primary =
   TextStyle(color: Color(0xFF4FAD5A), fontSize: 20.0, fontWeight: FontWeight.w700);

   TextStyle bold18Primary =
   TextStyle(color: Color(0xFF4FAD5A), fontSize: 18.0, fontWeight: FontWeight.w700);

   TextStyle bold16Primary =
   TextStyle(color: Color(0xFF4FAD5A), fontSize: 16.0, fontWeight: FontWeight.w700);

   TextStyle bold14Primary =
   TextStyle(color: Color(0xFF4FAD5A), fontSize: 14.0, fontWeight: FontWeight.w700);

   TextStyle bold12Primary =
   TextStyle(color: Color(0xFF4FAD5A), fontSize: 12.0, fontWeight: FontWeight.w700);

   TextStyle bold20White =
   TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w700);

   TextStyle bold18White =
   TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w700);

   TextStyle bold16White =
   TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w700);

   TextStyle bold14White =
   TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w700);

   TextStyle bold22Black =
   TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.w700);

   TextStyle bold18Black =
   TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w700);

   TextStyle bold20Black =
   TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w700);

   TextStyle bold16Black =
   TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w700);

   TextStyle bold18Grey =
   TextStyle(color: Color(0xFF9C9C9C), fontSize: 18.0, fontWeight: FontWeight.w700);

   TextStyle bold14Grey =
   TextStyle(color: Color(0xFF9C9C9C), fontSize: 14.0, fontWeight: FontWeight.w700);

   TextStyle bold14Orange =
   TextStyle(color: Color(0xFFFF6E07), fontSize: 14.0, fontWeight: FontWeight.w700);

   TextStyle semibold16White =
   TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600);

   TextStyle semibold14White =
   TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600);

   TextStyle semibold18Black =
   TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600);

   TextStyle semibold16Black =
   TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600);

   TextStyle semibold15Black =
   TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w600);

   TextStyle semibold14Black =
   TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w600);

   TextStyle semibold16Black33 =
   TextStyle(color: Color(0xFF333333), fontSize: 16.0, fontWeight: FontWeight.w600);

   TextStyle semibold15Black33 =
   TextStyle(color: Color(0xFF333333), fontSize: 15.0, fontWeight: FontWeight.w600);

   TextStyle semibold16Grey =
   TextStyle(color: Color(0xFF9C9C9C), fontSize: 16.0, fontWeight: FontWeight.w600);

   TextStyle semibold14Grey =
   TextStyle(color: Color(0xFF9C9C9C), fontSize: 14.0, fontWeight: FontWeight.w600);

   TextStyle medium16White =
   TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500);

   TextStyle medium14White =
   TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w500);

   TextStyle medium16Black =
   TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w500);

   TextStyle medium14Black =
   TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w500);

   TextStyle medium12Black =
   TextStyle(color: Colors.black, fontSize: 12.0, fontWeight: FontWeight.w500);

   TextStyle medium15Black =
   TextStyle(color: Color(0xFF333333), fontSize: 15.0, fontWeight: FontWeight.w500);

   TextStyle medium16Grey =
   TextStyle(color: Color(0xFF9C9C9C), fontSize: 16.0, fontWeight: FontWeight.w500);

   TextStyle medium15Grey =
   TextStyle(color: Color(0xFF9C9C9C), fontSize: 15.0, fontWeight: FontWeight.w500);

   TextStyle medium14Grey =
   TextStyle(color: Color(0xFF9C9C9C), fontSize: 14.0, fontWeight: FontWeight.w500);

   TextStyle medium12Grey =
   TextStyle(color: Color(0xFF9C9C9C), fontSize: 12.0, fontWeight: FontWeight.w500);




   LinearGradient searchGradient() {
     return LinearGradient(
       colors: [
         primaryColor.withOpacity(.5),
         Colors.white
       ],
       begin: Alignment.topLeft,
       end: Alignment.bottomRight,
     );
   }

}