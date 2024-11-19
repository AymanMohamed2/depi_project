import 'package:cancer/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

class CancerApp extends StatelessWidget {
  const CancerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
