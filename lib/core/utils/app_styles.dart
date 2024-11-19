import 'package:cancer/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle extraBold26(context) {
    return TextStyle(
      color: AppColors.primary,
      fontSize: getResponsiveFontSize(context, 26),
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle mediam16(context) {
    return TextStyle(
      color: AppColors.primary,
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context, 16),
    );
  }

  static TextStyle mediamColored15(context) {
    return TextStyle(
      color: AppColors.primary,
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context, 15),
    );
  }

  static TextStyle mediamColored17(context) {
    return TextStyle(
      color: AppColors.primary,
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context, 17),
    );
  }

  static TextStyle mediamColored20(context) {
    return TextStyle(
      color: AppColors.primary,
      fontWeight: FontWeight.w700,
      fontSize: getResponsiveFontSize(context, 20),
    );
  }

  static TextStyle bold25(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: getResponsiveFontSize(context, 25),
    );
  }

  static TextStyle bold30(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: getResponsiveFontSize(context, 30),
    );
  }

  static TextStyle mediam15(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context, 15),
    );
  }

  static TextStyle semiBold26(context) {
    return TextStyle(
      color: AppColors.primary,
      fontSize: getResponsiveFontSize(context, 26),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold18(context) {
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: getResponsiveFontSize(context, 18),
    );
  }

  static TextStyle semiBold18(context) {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveFontSize(context, 18),
    );
  }

  static TextStyle regular15(context) {
    return TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveFontSize(context, 15),
    );
  }

  static const TextStyle styleRegular14 = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    height: 0,
  );

  static const TextStyle styleBold20 = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    height: 0,
  );
  static const TextStyle styleBold35 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 35,
  );
}

double getResponsiveFontSize(context, double fontSize) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;

  if (width < 800) {
    return width / 550;
  } else if (width < 1281) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
