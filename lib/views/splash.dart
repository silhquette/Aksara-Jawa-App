import 'package:aplikasi_jawa/views/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: const Color(0xFFFFFFFF),
          child: Stack(
            children: [
              Center(
                child: Image.asset('assets/logo.png'),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: "Powered by "),
                            TextSpan(
                              text: "Wimaya Teknologi",
                              style: TextStyle(
                                  fontWeight:
                                      FontWeight.w500
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "v 2024.1.0",
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  )
                )
            ],
          )),
    );
  }
}
