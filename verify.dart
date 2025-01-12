import 'package:diaryapp/Login/Signup/reset_possward.dart';
import 'package:diaryapp/custom_Widget/Custom_ElevatedButton.dart';
import 'package:flutter/material.dart';

class VerifyAccount extends StatelessWidget {
  const VerifyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          InkWell(
              onTap: () {
                Navigator.pop(
                  context,
                );
              },
              child: const Icon(Icons.arrow_back_ios_new)),
          const SizedBox(
            height: 48,
          ),
          const Text(
            'Verify Account',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const Text('Verify your account by entering verification',
              style: TextStyle(
                color: Color(0xff90A3BF),
                fontSize: 12,
              )),
          Row(children: [
            Text('code we sent to ',
                style: TextStyle(
                  color: Color(0xff90A3BF),
                  fontSize: 12,
                ))
          ]),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 48.32,
                width: 55,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MainButton(
              text: "Confirm",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPassword(),
                    ));
              })
        ]),
      )),
    );
  }
}
