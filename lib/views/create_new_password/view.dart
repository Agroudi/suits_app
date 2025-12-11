import 'package:flutter/material.dart';
import 'package:suits_app/views/login/view.dart';
import 'package:suits_app/views/widgets/social_button.dart';

class CreateNewPasswordView extends StatelessWidget {
  const CreateNewPasswordView({super.key});

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
                    'Create New Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Create your new password to login',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    color: Color(0xFFA1A8B0)
                  ),
                ),
                SizedBox(height: 24),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(24))),
                    prefixIcon: Image.asset('assets/icons/password.png'),
                    suffixIcon: IconButton(onPressed: (){},
                        icon: Icon(Icons.visibility_off_outlined)
                    ),
                    hintText: "Enter your new password",
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
                    hintText: "Confirm your new password",
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  ],),
                SizedBox(height: 20),
                SocialButton(onPressed: (){
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
                    text: 'Create New Password'),
              ],),
          ),
        ),
    );
  }
}
