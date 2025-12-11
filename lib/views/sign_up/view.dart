import 'package:flutter/material.dart';
import 'package:suits_app/views/login/view.dart';
import 'package:suits_app/views/widgets/social_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)
        ),
        title: Text(
            'Sign Up',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(24))),
                  prefixIcon: Image.asset('assets/icons/user.png'),
                  hintText: "Enter your name",
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(24))),
                  prefixIcon: Image.asset('assets/icons/mail.png'),
                  hintText: "Enter your email",
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(24))),
                  prefixIcon: Image.asset('assets/icons/password.png'),
                  suffixIcon: IconButton(onPressed: (){},
                      icon: Icon(Icons.visibility_off_outlined)
                  ),
                  hintText: "Enter your password",
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Transform.scale(
                      scale: 1.4,
                      child: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        side: BorderSide(
                            strokeAlign: BorderSide.strokeAlignOutside,
                          width: 1,
                          color: Color(0xFFD9D9D9)
                        ),
                        value: false,
                        onChanged: (value) {

                      },),
                    ),
                    Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'I agree to the medidoc ',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFF3B4453)
                              )
                            ),
                            TextSpan(
                              text: 'Terms of Service',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFFDD8560)
                              )
                            ),
                            TextSpan(
                              text: '\n and',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFF3B4453)
                                )
                            ),
                            TextSpan(
                              text: ' Privacy Policy',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFFDD8560)
                                )
                            )
                          ]
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 38),
              SocialButton(
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xFFFFF5F8),
                                  radius: 40,
                                  child: Icon(
                                    Icons.check,
                                    color: Color(0xFFDD8560),
                                    size: 40,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Success',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Your account has been successfully\nregistered',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFA1A8B0),
                                  ),
                                ),
                                SizedBox(height: 20),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFDD8560),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    minimumSize: Size(183, 56),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LoginView(),));
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );});
                  },
                  text: 'Sign Up'
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account?',
                    style: TextStyle(
                      color: Color(0xFF717784),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView(),));
                  },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Color(0xFFDD8560),
                        ),
                      )
                  )
                ],
              )
          ],)
        )
      )
    );
  }
}


/*Text(
'I agree to the medidoc',
style: TextStyle(
fontWeight: FontWeight.w400,
color: Color(0xFF3B4453)
),
),
TextButton(onPressed: (){},
child: Text(
'Terms of Service',
style: TextStyle(
color: Color(0xFFDD8560)
),
)
),*/
/*
Text(
'and',
style: TextStyle(
fontWeight: FontWeight.w400,
color: Color(0xFF3B4453)
),
),
TextButton(onPressed: (){},
child: Text(
'Privacy Policy',
style: TextStyle(
color: Color(0xFFDD8560)
),
)
)*/
