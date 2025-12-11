import 'package:flutter/material.dart';
import 'package:suits_app/views/splash/view.dart';

void main()
{
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: Color(0xFFF4F5F7),
              appBarTheme: AppBarTheme(
                  backgroundColor: Color(0xFFF4F5F7)
              ),
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: Color(0xFFF9FAFB),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Color(0xFFE5E7EB)
                    )
                ),
              )
          ),
          home: SplashView()
      )
  );
}