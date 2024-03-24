import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          //TODO: Refactor image size responsively
          Image.asset("assets/images/sprint_logo.png", width: 102, height: 102,),
          Center(child: Text("Hello login112"),),
        ],
      ),
    );
  }
}