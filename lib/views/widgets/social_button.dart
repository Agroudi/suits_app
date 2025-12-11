import 'package:flutter/material.dart';

class SocialButton extends StatefulWidget {
  // 2 Changed parameters: Text, onTap
  final VoidCallback onPressed;
  final String text;

  const SocialButton({super.key, required this.onPressed, required this.text});

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(onPressed: widget.onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(Color(0xFFDD8560)),
        ),
        child:
        Text(
          '${widget.text}',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17),
        ),
      ),
    );
  }
}
