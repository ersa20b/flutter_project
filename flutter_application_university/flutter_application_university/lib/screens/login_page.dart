import 'package:flutter/material.dart';
import 'package:flutter_application_university/screens/home_page.dart';
import 'package:flutter_application_university/widgets/my_login_botton.dart';
import 'package:flutter_application_university/widgets/my_textfeild.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  void signUserIn(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: ListView(
          children: [
            const SizedBox(
              height: 192,
            ),
            const Text(
              'Flutter lab Project',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 50,
            ),
            const Mytextfeild(
              textHint: 'email@example.com',
              obscureText: false,
              lable: 'Email',
            ),
            const SizedBox(
              height: 25,
            ),
            const Mytextfeild(
              textHint: 'Enter your Password',
              obscureText: true,
              lable: 'Student Number',
            ),
            const SizedBox(
              height: 100,
            ),
            MyLoginBotton(
              onTap: () => signUserIn(context),
            ),
          ],
        ),
      )),
    );
  }
}
