import 'package:flutter/material.dart';
import 'package:suits_app/views/login/view.dart';
import 'package:suits_app/views/widgets/social_button.dart';

class GetStartedView extends StatefulWidget {
  const GetStartedView({super.key});

  @override
  State<GetStartedView> createState() => _GetStartedViewState();
}

class _GetStartedViewState extends State<GetStartedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFFF9FAFB),),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/model_0.png",
                      fit: BoxFit.contain,
                      height: 370,
                      width: 137,
                    ),
                  ),
                ),
                const SizedBox(width: 53),
                Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/model_1.png",
                          fit: BoxFit.contain,
                          height: 214,
                          width: 137,
                        ),
                      ),
                      const SizedBox(height: 23),
                      ClipOval(
                        child: Image.asset(
                          "assets/images/model_2.png",
                          fit: BoxFit.contain,
                          height: 141,
                          width: 133,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox( height: 33),
            Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: "The "),
                      TextSpan(
                        text: "Suits App",
                        style: TextStyle(color: Color(0xFFDD8560)),
                      ),
                      TextSpan(text: " that\nMakes Your Look Your Best"),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  "Everything you need in the world\nof fashion, old and new",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 61),
                Padding(
                  padding: const EdgeInsets.only(bottom: 78),
                  child: SocialButton(
                      onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
                  },
                      text: 'Get Started'
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
