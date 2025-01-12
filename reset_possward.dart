import 'package:diaryapp/custom_Widget/Custom_ElevatedButton.dart';
import 'package:diaryapp/custom_Widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios_new)),
            SizedBox(
              height: 20,
            ),
            Text(
              "Reset Password",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter your new password and confirm password",
              style: TextStyle(color: Color(0xff90A3BF)),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Password",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            TextFieldWidget(
              hintText: "Enter Your Password",
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: Color(0xff64748B),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Confirm Password",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            TextFieldWidget(
              hintText: "Enter Your Confirm Password",
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: Color(0xff64748B),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MainButton(
              text: "Confirm",
              onTap: () {},
            )
          ],
        ),
      )),
    );
  }
}
