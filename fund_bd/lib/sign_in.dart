import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:fund_bd/home_screen.dart';


class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/bg.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 350,
              //color: Colors.red,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'FundBD',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      shadows: [
                        BoxShadow(
                          blurRadius: 1,
                          color: Color.fromARGB(255, 13, 139, 22),
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Sign in to continue',
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Google,
                        text: "Sign up with Google",
                        onPressed: () {
                          Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>HomeScreen(),
                  ),
                );
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Facebook,
                        text: "Sign up with Facebook",
                        onPressed: () {
                          Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>HomeScreen(),
                  ),
                );
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'By signing in you are accepting our ',
                        style:
                            TextStyle(color: Color.fromARGB(255, 67, 65, 65)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Terms and Privacy  Policy ',
                        style:
                            TextStyle(color: Color.fromARGB(255, 67, 65, 65)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}