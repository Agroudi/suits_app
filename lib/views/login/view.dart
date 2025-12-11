import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:suits_app/views/forget_password/view.dart';
import 'package:suits_app/views/sign_up/view.dart';
import 'package:suits_app/views/widgets/social_button.dart';



class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.canPop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)
        ),
        title: Text(
            'Login',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
            Text(
                "Hi! Welcome back, you've been missed!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
              SizedBox(height: 39),
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordView(),));
                },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Color(0xFFDD8560)
                      ),)
                ),
              ],),
              SizedBox(height: 22),
              SocialButton(
                text: 'Login',
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
                                'Yay! Welcome Back!',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Once again you have successfully logged\ninto the medidoc app',
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
                                  'Go to home',
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
              ),
              SizedBox(height: 19),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(
                  'Don’t have an account?',
                style: TextStyle(
                  color: Color(0xFF717784),
                  fontWeight: FontWeight.w400,
                ),
                ),
                  TextButton(onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpView(),));
                  },
                      child: Text(
                          'Sign Up',
                        style: TextStyle(
                          color: Color(0xFFDD8560),
                        ),
                      )
                  )
              ],),
              SizedBox(height: 21),
              Row(
                children: [
                  Expanded(child: Divider()),
                  SizedBox(width: 9),
                  Text(
                      'OR',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFFA1A8B0)
                    ),
                  ),
                  SizedBox(width: 9),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 57,
                child: SignInButton(
                    Buttons.Google,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    text: 'Sign in with Google',
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    onPressed: (){}
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 57,
                child: SignInButton(
                    Buttons.Apple,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    text: 'Sign in with Apple',
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    onPressed: (){}
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 57,
                child: SignInButton(
                    Buttons.Facebook,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    text: 'Sign in with Facebook',
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    onPressed: (){}
                ),
              ),
          ],),
        ),
      ),
    );
  }
}
/*Container(
                width: double.infinity,
                height: 57,
                child: OutlinedButton(onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xFFFFFFFF),
                      side: BorderSide(
                        color: Color(0xFFE5E7EB),
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1, right: 5, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          Icon(
                              FontAwesomeIcons.google,
                            size: 25,
                          ),
                          SizedBox(width: 75),
                          Text(
                            'Sign in with Google',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF000000)
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ),*/
/*Container(
                width: double.infinity,
                height: 57,
                child: OutlinedButton(onPressed: (){},
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0xFFFFFFFF),
                        side: BorderSide(
                          color: Color(0xFFE5E7EB),
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1, right: 5, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.apple,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 75),
                          Text(
                            'Sign in with Apple',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF000000)
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ),*/
/*Container(
                width: double.infinity,
                height: 57,
                child: OutlinedButton(onPressed: (){},
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0xFFFFFFFF),
                        side: BorderSide(
                          color: Color(0xFFE5E7EB),
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1, right: 5, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          Icon(
                              FontAwesomeIcons.facebook,
                            color: Colors.blue,
                            size: 25,
                          ),
                          SizedBox(width: 75),
                          Text(
                            'Sign in with Facebook',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF000000)
                            ),
                          )
                        ],
                      ),
                    )
                ),
              )*/