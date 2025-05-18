import 'package:flutter/material.dart';
import 'package:flutter_car_installment_calculator/views/input_screen_ui.dart';
import 'package:flutter_car_installment_calculator/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    FlutterCar(),
  );
}

class FlutterCar extends StatefulWidget {
  const FlutterCar({super.key});

  @override
  State<FlutterCar> createState() => _FlutterCarState();
}

class _FlutterCarState extends State<FlutterCar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputScreenUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
