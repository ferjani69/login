import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Opacity(
          opacity: 0.7,
          child: SvgPicture.asset(
            "assets/wavestop.svg",
            width: 250,
            height: 100,
          ),
        ),
      ),Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: 0.3,
              child: SvgPicture.asset(
                "assets/waves.svg",
                width: 250,
                height: 100,
              ),
            ),
          ),
         SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffF3F3F5),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: InputBorder.none, // Remove default border
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF3F3F5),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: InputBorder.none, // Remove default border
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {
                    // Implement login logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                TextButton(
                  child: Text('Forgot password?'),
                  onPressed: () {
                    // Implement forgot password logic
                  },
                ),
                // Social media login buttons removed
              ],
            ),
          ),
        ),
    ]),

    );
  }
}
