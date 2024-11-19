import 'package:cancer/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

void showAlert(context, String message,
    [Function()? onConfirmBtnTap, QuickAlertType? type]) {
  QuickAlert.show(
      context: context,
      type: type ?? QuickAlertType.info,
      text: message,
      confirmBtnColor: AppColors.primary,
      onConfirmBtnTap: onConfirmBtnTap ??
          () {
            Navigator.pop(context);
          });
}
