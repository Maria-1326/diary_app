import 'package:diaryapp/Home/homelist.dart';
import 'package:diaryapp/Login/Signup/forgetpassward.dart';
import 'package:diaryapp/Login/Signup/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: double.infinity,
                height: 44,
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const Text(
                'Please enter email & password',
                style: TextStyle(
                  color: Color(0xff90A3BF),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  hintStyle: const TextStyle(color: Color(0xff90A3BF)),
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 8, color: Color(0xff90A3BF)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    hintText: 'Enter Your Password',
                    hintStyle: const TextStyle(color: Color(0xff90A3BF)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff90A3BF)),
                        borderRadius: BorderRadius.circular(7))),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgetPassward(),
                      ));
                },
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color(0xffFFB347)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
                            builder: (context) => HomeList(),
                          ));
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              const SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dont have an account? '),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                          ));
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Color(0xffFFB347)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
