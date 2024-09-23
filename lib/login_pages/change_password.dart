import 'package:e_health_app/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.h,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              Text('Set Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23.h,
              ),
              ),
              SizedBox(height: 10.h,),
              Text('Your new password must be different from\n            previously used passwords'),
              SizedBox(height: 30.h,),
              Padding(
              padding: const EdgeInsets.only(right: 245),
              child: const Text('Password',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            PasswordContainer(),
            SizedBox(height: 20.h,),
              Padding(
              padding: const EdgeInsets.only(right: 185),
              child: const Text('Confirm Password',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            PasswordContainer(),
            SizedBox(height: 30.h,),
            PasswordButton().build(context),
            ],  
          ),
        ),
      ),
    );
  }
}