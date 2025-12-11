import 'package:flutter/material.dart';
import 'package:suits_app/views/verify/view.dart';
import 'package:suits_app/views/widgets/social_button.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

bool isEmailSelected = true;

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Forgot Your Password?',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Enter your email or your phone number, we \nwill send you confirmation code',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA1A8B0)
                ),
              ),
              SizedBox(height: 36),
              Container(
                width: 326,
                height:  56,
                decoration: BoxDecoration(
                  color: Color(0xFFE5E7EB),
                  borderRadius: BorderRadius.circular(24)),
                child: Row(
                  children: [
                  Expanded(
                    child: TextButton(onPressed: ()
                    {
                      setState(()
                      {
                        isEmailSelected = true;
                      });
                    },
                        child: Text(
                            'Email',
                          style: TextStyle(
                            color: Color(0xFFDD8560),
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                          ),
                        )
                    ),
                  ),
                    Expanded(
                      child: TextButton(onPressed: ()
                      {
                        setState(()
                        {
                          isEmailSelected = false;
                        });
                      },
                          child: Text(
                            'Phone',
                            style: TextStyle(
                                color: Color(0xFFDD8560),
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),
                          )
                      ),
                    )
                ],),
              ),
              SizedBox(height: 16),
              TextFormField(
                keyboardType: isEmailSelected ? TextInputType.emailAddress : TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
                  hintText: isEmailSelected ? 'Enter your email' : 'Enter your phone number',
                  prefixIcon: Image.asset(isEmailSelected ? 'assets/icons/mask.png' : 'assets/icons/call.png')
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                ],),
              SizedBox(height: 20),
              SocialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyView(),));
              }, text: 'Reset Password'),
            ],
          ),
        ),
      ),
    );
  }
}
