// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:furnature_app/screens/SignUpScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset("assets/images/login1.png"),
            SizedBox(height: 10),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.only(left: 20, right: 15),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                ),
                border: Border.all(color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    blurRadius: 1.0,
                    offset: Offset(2.6, 2.6),
                  )
                ],
              ),
              child: Center(
                  child: TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.white,
                    )),
              )),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.only(left: 20, right: 15),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                ),
                border: Border.all(color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    blurRadius: 1.0,
                    offset: Offset(2.6, 2.6),
                  )
                ],
              ),
              child: Center(
                  child: TextField(
                decoration: InputDecoration(
                  hintText: "Pasword",
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                  ),
                ),
              )),
            ),
            SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(55),
                          bottomRight: Radius.circular(55),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 1.0,
                            offset: Offset(2.6, 2.6),
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.login,
                          color: Colors.white,
                          size: 26,
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    height: 60,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.indigo,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(55),
                          bottomRight: Radius.circular(55),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 1.0,
                            offset: Offset(2.6, 2.6),
                          )
                        ]),
                    child: Center(
                      child: Text(
                        "Sign UP",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 50),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 4.0,
                      offset: Offset(0.6, 0.6),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("assets/images/fb.png"),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                width: 50,
                height: 45,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 4.0,
                      offset: Offset(0.6, 0.6),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "assets/images/gg.png",
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
