import 'package:e_health_app/login_pages/change_password.dart';
import 'package:e_health_app/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 180,left: 20, right: 20),
        child: Column(
          children: [
            Text('Hello there!',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: const Text('Email/Phone number'),
            ),
            Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Expanded(
                child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter email or phone number',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                  color: tertiaryColor,
              ),
            ),
          ),
        ),
      ),
    ),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.only(right: 245),
              child: const Text('Password'),
            ),
            Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: !_isObscure,
                      decoration: InputDecoration(
                        hintText: '********',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                        color: tertiaryColor,
                      ),
                              ),
                            ),
                          ),
                  IconButton(onPressed: (){
                    setState(() {
                        _isObscure = !_isObscure;
                        });
                      }, 
                      icon: Icon(_isObscure? Icons.visibility: Icons.visibility_off)),
                ],
              ),
      ),
    ),
            SizedBox(height: 30.h,),
            SigninButton().build(context),
            SizedBox(height: 20.h,),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ChangePassword()));
              }, 
              child: Text('Change Password',
              style: TextStyle(
                color: Colors.black
              ),
              ),
              ),
            SizedBox(height: 10.h,),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.fingerprint,
              color: primaryColor,
              size: 50.h,
              ),
              ),
          ],
        ),
      ),
    );
  }
}
