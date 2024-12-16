import 'package:easy_buy/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class EasyBuy extends StatelessWidget {
  const EasyBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: _elevatedButtonThemeData(),
        inputDecorationTheme: _inputDecorationTheme(),
      ),
      themeMode: ThemeMode.dark,
      title: 'EasyBuy',
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

ElevatedButtonThemeData _elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        fixedSize: const Size.fromWidth(240),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
  );
}

InputDecorationTheme _inputDecorationTheme() {
  return InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    border: _inputBorder(),
  );
}

OutlineInputBorder _inputBorder() {
  return OutlineInputBorder(
      borderSide: BorderSide.none, borderRadius: BorderRadius.circular(8));
}
