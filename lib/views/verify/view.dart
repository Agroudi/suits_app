import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:suits_app/views/create_new_password/view.dart';
import 'package:suits_app/views/widgets/social_button.dart';


class VerifyView extends StatelessWidget {
  const VerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Navigator.canPop(context)
            ? IconButton(
          icon: const Icon(Icons.arrow_back_ios_new), // iOS-style
          onPressed: () => Navigator.pop(context),
        )
            : null
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 33),
              SizedBox(
                width: 280,
                child: Text(
                  'Enter Verification Code',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text.rich(
                  TextSpan(
                children: [
                  TextSpan(
                      text: 'Enter code that we have sent to your  \nnumber',
                    style: TextStyle(
                      color: Color(0xFFA1A8B0),
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    )
                  ),
                  TextSpan(
                      text: ' 08528188***',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      )
                  ),
                ]
              )
              ),
              SizedBox(height: 33),
              PinCodeTextField(
                  appContext: context,
                  length: 4,
                backgroundColor: Colors.transparent,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                enableActiveFill: true,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldHeight: 64,
                  fieldWidth: 64,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  inactiveColor: Colors.transparent,
                  selectedColor: Theme.of(context).primaryColor,
                  selectedFillColor: Colors.white,
                  activeColor: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(16)
                ),
              ),
              SizedBox(height: 31),
              SocialButton(onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewPasswordView()));
              },
                  text: 'Verify'),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn’t receive the code?',
                    style: TextStyle(
                      color: Color(0xFF717784),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(onPressed: () {},
                      child: Text(
                        'Resend',
                        style: TextStyle(
                          color: Color(0xFFDD8560),
                        ),
                      )
                  )
                ],),
            ],
          ),
        ),
      ),
    );
  }
}
/*Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        contentPadding: EdgeInsets.symmetric(vertical: 25),
                        filled: true,
                        fillColor: Color(0xFFF9FAFB),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: Color(0xFFE5E7EB)
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        contentPadding: EdgeInsets.symmetric(vertical: 25),
                        filled: true,
                        fillColor: Color(0xFFF9FAFB),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: Color(0xFFE5E7EB)
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        contentPadding: EdgeInsets.symmetric(vertical: 25),
                        filled: true,
                        fillColor: Color(0xFFF9FAFB),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: Color(0xFFE5E7EB)
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        contentPadding: EdgeInsets.symmetric(vertical: 25),
                        filled: true,
                        fillColor: Color(0xFFF9FAFB),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: Color(0xFFE5E7EB)
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),*/