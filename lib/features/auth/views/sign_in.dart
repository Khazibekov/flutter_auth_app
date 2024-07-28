import 'package:flutter/material.dart';
import 'package:flutter_auth/common/colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/sign_in.png"),
                  fit: BoxFit.cover),
            ),
          ),
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                      child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: titleColor,
                      fontSize: 24,
                    ),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
