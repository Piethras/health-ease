import 'package:e_health_app/login_pages/confirm_signup.dart';
import 'package:e_health_app/login_pages/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final primaryColor = Color(0xFFFF56B7C5);
final secondaryColor = Color(0xFFFFFAFDEF);
final tertiaryColor = Color.fromRGBO(179, 178, 178, 1);

class LoginContainers {
  final Icon logo;
  final String word;
  LoginContainers({
    required this.logo,
    required this.word,
  });
  Widget build(BuildContext context) {
    return Container(
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
            logo,
            SizedBox(width: 5.w,),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: word,
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: tertiaryColor,
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SignupButton {
  final String word;
  SignupButton({
    required this.word,
  });
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ConfirmSignup()));
        }, 
        child: Text(word,
      style: TextStyle(
        color: secondaryColor,
        fontSize: 19.sp
      ),
      ),
        )
    );
  }
}

class SignupButton2 {
  final String word;
  SignupButton2({
    required this.word,
  });
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Verification()));
        }, 
        child: Text(word,
      style: TextStyle(
        color: secondaryColor,
        fontSize: 19.sp
      ),
      ),
        )
    );
  }
}

class VerificationBoxes{
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.h,
      decoration: BoxDecoration(
        border: Border.all(width: 1, 
        color: Colors.grey
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Expanded(
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: '-', border: InputBorder.none,
            hintStyle: TextStyle(
              color: tertiaryColor,
              fontSize: 40,
            )
          ),
        ),
      ),
    );
  }
}

class SigninButton {
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Verification()));
        }, 
        child: Text('Sign In',
      style: TextStyle(
        color: secondaryColor,
        fontSize: 19.sp
      ),
      ),
        )
    );
  }
}


class PasswordContainer extends StatefulWidget {

  const PasswordContainer({super.key,});

  @override
  State<PasswordContainer> createState() => _PasswordContainerState();
}

class _PasswordContainerState extends State<PasswordContainer> {
  bool _isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 1, 
        color: Colors.grey
        ),
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
                  hintText: '*******', border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: tertiaryColor,
                    fontSize: 22.sp
                  ),
                ),
              ),
            ),
            IconButton(onPressed: (){
                      setState(() {
                          _isObscure = !_isObscure;
                          });
                        }, 
                        icon: Icon(_isObscure? Icons.visibility: Icons.visibility_off,
                        color: tertiaryColor,
                        )),
          ],
        ),
      ),
    );
  }
}

class PasswordButton {
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Verification()));
        }, 
        child: Text('Create New Password',
      style: TextStyle(
        color: secondaryColor,
        fontSize: 19.sp
      ),
      ),
        )
    );
  }
}

  
