import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:suits_app/views/on_boarding/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingView()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDD8560),
      body: Align(
        alignment: Alignment.center,
        child: ElasticInRight(
          duration: Duration(seconds: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Image.asset(
                    'assets/images/S.png',
                ),
              ),
              SizedBox(width: 15),
              Text(
                  'suits',
                style: TextStyle(
                  fontFamily: 'Waterfall',
                  fontWeight: FontWeight.w400,
                  fontSize: 128,
                  color: Colors.white
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
