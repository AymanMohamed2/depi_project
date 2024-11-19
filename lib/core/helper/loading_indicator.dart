import 'package:cancer/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';

abstract class LoadingIndicator {
  static void showLoadingIndicator(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevents user from dismissing the dialog
      builder: (BuildContext context) {
        return const Center(child: CustomLoadingIndicator());
      },
    );
  }

 static void hideLoadingIndicator(BuildContext context) {
    Navigator.pop(context);
  }
}
