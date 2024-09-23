import 'package:e_health_app/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmSignup extends StatelessWidget {
  const ConfirmSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        title: Row(
          children: [
            // IconButton(
            //   onPressed: (){}, 
            //   icon: Icon(Icons.arrow_back),
            //   ),
             SizedBox(width: 80.w,),
            Text('Sign Up',
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Enter your phone number',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21.sp
                ),
              ),
              SizedBox(height: 20.h,),
              LoginContainers(logo: Icon(Icons.phone_outlined, color: tertiaryColor,), 
              word: 'Phone number').build(context),
            SizedBox(height: 30.h,),
            SignupButton2(word: 'Sign Up').build(context),
            SizedBox(height: 20.h,),
              Center(
                child: Text('or sign up with',
                style: TextStyle(
                  color: tertiaryColor
                ),
                ),
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Text('Already have an account?',
                    style: TextStyle(
                      color: tertiaryColor,
                    ),
                    ),
                    TextButton(
                      onPressed: (){}, 
                      child: Text('Sign In',
                      style: TextStyle(
                        color: primaryColor,
                      ),
                      )
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}