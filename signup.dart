import 'package:diaryapp/Home/homelist.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool checkbox = true;

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
                height: 50,
              ),
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
                'Signup',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const Text(
                'Please enter email & password',
                style: TextStyle(color: Color(0xff90A3BF)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Name',
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
                    hintText: 'Enter Your Full Name '),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Email',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Password',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)))),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: const Color(0xffFFB347),
                    value: checkbox,
                    onChanged: (value) {
                      setState(() {
                        checkbox = value!;
                      });
                    },
                  ),
                  const Text('I agree with the '),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        color: Color(0xffFFB347),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xffFFB347),
                        decorationThickness: 1.2,
                      ),
                    ),
                  ),
                ],
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
                          borderRadius: BorderRadius.circular(8))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeList(),
                        ));
                  },
                  child: const Text('Register',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account? '),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Color(0xffFFB347)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
