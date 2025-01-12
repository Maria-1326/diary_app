import 'package:diaryapp/Login/Signup/verify.dart';
import 'package:flutter/material.dart';

class ForgetPassward extends StatelessWidget {
  ForgetPassward({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                'Forget Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const Text(
                  'Enter your registered email address to get verification code',
                  style: TextStyle(
                    color: Color(0xff90A3BF),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Email',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Enter Your Email '),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFB347),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerifyAccount(),
                          ));
                    },
                    child: const Text(
                      'Send',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ])),
      ),
    );
  }
}
