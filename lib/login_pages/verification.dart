import 'package:e_health_app/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final primaryColor = Color(0xFFFF56B7C5);
final secondaryColor = Color(0xFFFFFAFDEF);
final tertiaryColor = Color.fromRGBO(179, 178, 178, 1);

class Verification extends StatelessWidget {
  const Verification({super.key});

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
            Text('Verification',
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Text('Phone Verification',
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20.sp,
            ),
            ),
            SizedBox(height: 10.h,),
            Text("We'll send a code to your number to\n             confirm you own it.",
            style: TextStyle(color: tertiaryColor),
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.only(left: 50,),
              child: Row(
                children: [
                  VerificationBoxes().build(context),
                  SizedBox(width: 10.w,),
                  VerificationBoxes().build(context),
                  SizedBox(width: 10.w,),
                  VerificationBoxes().build(context),
                  SizedBox(width: 10.w,),
                  VerificationBoxes().build(context),
                ],
              ),
            ),
            SizedBox(height: 30.h,),
            Text("I haven't received a code (0:09)",
            style: TextStyle(
              color: tertiaryColor,
              fontSize: 20.sp
            ),
            ),
            SizedBox(height: 20.h,),
            TextButton(
              onPressed: (){}, 
              child: Text('resend code',
              style: TextStyle(
                color: primaryColor,
              ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}