import 'package:flutter/material.dart';
import 'package:redditclone/core/common/singin_button.dart';

import '../../../core/constants/constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          Constant.logoPath,
          height: 40,
        ),
        actions: [
          TextButton(
            onPressed: (){}, 
            child: const Text(
              "Skip",
               style: TextStyle(fontWeight: FontWeight.bold),
               ),),
        ],
      ),
      body:  Column(
        children: [
          const SizedBox(height: 30,),
          const Text(
            "Dive into anything", style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(Constant.loginEmotePath, height: 400,),
          ),
          const SizedBox(height: 20,),
          const SinginButton()
        ],
      ),
    );
  }
}