import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 500.h,
                width: 1.sw,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Sign in to Continue to Login'),
                    const Text('Sign in to Continue to Signup'),
                    const Text('Sign in to Continue to Sign in'),
                    Text(
                      'Vegi',
                      style: TextStyle(
                        fontSize: 50.sp,
                        color: Colors.green,
                        shadows: [
                          const BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(4, 4),
                          ),
                        ],
                      ),
                    ),
                    // with custom text
                    Column(
                      children: [
                        SignInButton(
                          Buttons.Apple,
                          text: "Sign in with Apple",
                          onPressed: () {},
                        ),
                        // with custom text
                        SignInButton(
                          Buttons.Google,
                          text: "Sign up with Google",
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const Text(
                      'By signing in you are agreeing to our \n Terms and Privacy Policy',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
