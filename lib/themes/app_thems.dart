import 'dart:ui';

import 'package:flutter/material.dart';

class AppThemes{
  // Singleton pattern
 AppThemes._();
 static final AppThemes instance =AppThemes._();

 // Custom colors

 static Color primaryColor=Colors.teal;
 static Color appBarColor=Colors.teal;
 static Color appBodyColor=Colors.white;
 static Color buttonColor = Colors.teal;
 static Color iconColor=Colors.teal;
 static Color iconGreyColor= Colors.grey;
 static Color primaryTextColor  =Colors.white;
 static Color textBlackColors=Colors.black;
 static Color textColorGrey =Colors.grey;

 static ThemeData lightTheme=ThemeData(

   brightness: Brightness.light,

   // App Bar theme data
   appBarTheme: AppBarTheme(
     backgroundColor: AppThemes.appBarColor,
     // App bar Icons theme data
     iconTheme: IconThemeData(
       color: AppThemes.iconColor,
     ),
     centerTitle: true,
     shadowColor: Colors.grey,
     elevation: 0,
     // App bar text Color
     titleTextStyle: TextStyle(
       fontWeight: FontWeight.normal,
       fontSize: 22,
       color: AppThemes.primaryTextColor,
     ),
   ),

   //dropdownMenuTheme: DropdownMenuThemeData(
   //   menuStyle: MenuStyle(
   //     alignment: Alignment.center,
   //   ),
   // ),

   floatingActionButtonTheme: FloatingActionButtonThemeData(
     backgroundColor:AppThemes.primaryColor,
     foregroundColor: AppThemes.primaryTextColor,
   ),

 );
}