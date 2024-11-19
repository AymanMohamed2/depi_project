import 'package:cancer/app.dart';
import 'package:cancer/core/helper/service_locator.dart';
import 'package:cancer/core/helper/shared_prefs.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  ServiceLocator.setup();
  runApp(
    const CancerApp(),
  );
}
