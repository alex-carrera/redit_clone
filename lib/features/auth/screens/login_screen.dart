import 'package:flutter/material.dart';
import 'package:redit_clone/core/common/sing_in_buttom.dart';
import 'package:redit_clone/core/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
            Constants.logoPath,
            height: 45,
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Skipe',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                )),
          ]),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              'Dive to anything',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              Constants.loginEmotePath,
              height: 400,
            ),
            const SizedBox(
              height: 30,
            ),
            const SingInButtom(),
          ],
        ),
      ),
    );
  }
}
