import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/generated/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  AppStyle._();

  static TextStyle txtHeader28Blod = TextStyle(
    fontFamily: FontFamily.notoSansThai,
    color: AppColor.themeBlackColor,
    fontSize: 28.sp,
    fontWeight: FontWeight.w600,
    height: 1.4.h,
  );

  static TextStyle txtHeader24Blod = TextStyle(
    fontFamily: FontFamily.notoSansThai,
    color: AppColor.themeBlackColor,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    height: 1.4.h,
  );

  static TextStyle txtHeader20Blod = TextStyle(
    fontFamily: FontFamily.notoSansThai,
    color: AppColor.themeBlackColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    height: 1.4.h,
  );

  static TextStyle txtHeader18Semi = TextStyle(
    fontFamily: FontFamily.notoSansThai,
    color: AppColor.themeBlackColor,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    height: 1.4.h,
  );

  static TextStyle txtBody14Regular = TextStyle(
    fontFamily: FontFamily.notoSansThai,
    color: AppColor.themeBlackColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 1.5.h,
  );

  static TextStyle txtBody16Regular = TextStyle(
    fontFamily: FontFamily.notoSansThai,
    color: AppColor.themeBlackColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    height: 1.5.h,
  );

  static TextStyle txtCaption = TextStyle(
    fontFamily: FontFamily.notoSansThai,
    color: AppColor.themeBlackColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 1.5.h,
  );

  static TextStyle txtCaption12 = TextStyle(
    fontFamily: FontFamily.notoSansThai,
    color: AppColor.themeBlackColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    height: 1.5.h,
  );

  static TextStyle txtCaption10 = TextStyle(
    fontFamily: FontFamily.notoSansThai,
    color: AppColor.themeBlackColor,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    height: 1.5.h,
  );

  static TextStyle txtError = TextStyle(
    fontFamily: FontFamily.notoSansThai,
    color: AppColor.themeAlertColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    height: 1.4.h,
  );
}
