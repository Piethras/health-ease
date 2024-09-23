import 'package:e_health_app/login_pages/signin.dart';
import 'package:e_health_app/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final primaryColor = Color(0xFFFF56B7C5);
final secondaryColor = Color(0xFFFFFAFDEF);
final tertiaryColor = Color.fromRGBO(179, 178, 178, 1);
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        title: Row(
          children: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.arrow_back),
              ),
              SizedBox(width: 100.w,),
            Text('Sign Up',
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Complete your Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp
                ),
              ),
              Text('Do not worry, only you can see your personal info,\nno one else will be able to see it',
              style: TextStyle(color: tertiaryColor),
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Stack(
                  children: [
                    Container(
                      height: 130.h,
                      width: 130.h,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(350)
                      ),
                      child: Icon(Icons.person, 
                       size: 100.h,
                       color: tertiaryColor,
                       ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 85, left: 85),
                      child: Container(
                        height: 35.h,
                        width: 38.w,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          border: Border.all(width: 2.w, color: secondaryColor),
                          borderRadius: BorderRadius.circular(180)
                        ),
                        child: FittedBox(
                          child: IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.edit_outlined,
                            size: 30,
                            color: secondaryColor,
                            ),
                            ),
                        ),
                      ),
                    ),
                    ]
                    ),
              ),
              SizedBox(height: 30.h,),
              LoginContainers(logo: Icon(Icons.person, color: tertiaryColor,), word: 'Full name').build(context),
              SizedBox(height: 20.h,),
              LoginContainers(logo: Icon(Icons.favorite, color: tertiaryColor,), word: 'Gender').build(context),
              SizedBox(height: 20.h,),
              LoginContainers(logo: Icon(Icons.email_outlined, color: tertiaryColor,), word: 'Email').build(context),
              SizedBox(height: 20.h,),
              LoginContainers(logo: Icon(Icons.lock, color: tertiaryColor,), word: 'Password').build(context),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Text('By tapping "Next", you agree to our '),
                  Text('Terms &',
                  style: TextStyle(
                    color: primaryColor,
                  ),),
                ],
              ),
              Row(
                children: [
                  Text('Conditions ',
                  style: TextStyle(
                    color: primaryColor,
                  ),),
                  Text('and '),
                  Text('Privacy Policy',
                  style: TextStyle(
                    color: primaryColor,
                  ),),
                ],
              ),
              SizedBox(height: 30.h,),
              SignupButton(word: 'Next').build(context),
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
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SignIn()));
                      }, 
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
      ),
    );
  }
}