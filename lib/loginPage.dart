import 'package:flutter/material.dart';
import 'package:flutter_application_3/SigupPage.dart';
import 'package:flutter_application_3/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(101, 145, 87, 1),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            // Dismiss the keyboard when tapping outside of text fields
            FocusScope.of(context).unfocus();
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/loginPageBackground.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 260.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Montserrat',
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    TextField(
                      controller: username,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(250, 250, 250, 1),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(),
                        labelText: "Username",
                        hintText: 'Enter your username',
                      ),
                    ),
                    SizedBox(height: 15.0),
                    TextField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(250, 250, 250, 1),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter password',
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Align(
                      child: Container(
                        width: 130,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(101, 145, 87, 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                            print(
                              'Add ${username.text}  ${password.text} into the debug console',
                            );
                          },
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              letterSpacing: 7,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 160),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 14),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()),
                            );
                          },
                          child: Text(
                            " Create Account",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
