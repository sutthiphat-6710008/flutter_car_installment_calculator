import 'package:flutter/material.dart';
import 'package:flutter_car_installment_calculator/views/input_screen_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    Future.delayed(
      //ระยะเวลา
      const Duration(seconds: 3),
      //ครบเวลาแล้วทำอะไรต่อ
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => InputScreenUI(),
        ),
      ),
    );
    // Delay the navigation to the next screen after 3 seconds and then go to input screen
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img01.png',
              width: 250,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Car installment ',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen,
              ),
            ),
            Text(
              'Calculator',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Version 1.0.0',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
