import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:navana_air/comman/colors.dart';
import 'package:navana_air/comman/string.dart';
import 'package:navana_air/components/customize_flat_button.dart';
import 'package:navana_air/components/signup_button.dart';
import 'package:navana_air/services/authentication.dart';

import 'Home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _passwordVisible;
  final _formKey = GlobalKey<FormState>();
  String email, password;

  // Toggles the password show status
  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),

        // The form widget acts as a container, which allows us to group and validate the multiple form fields
        child: Form(
          key: _formKey,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                    Text(
                      'Log In',
                      //TextString.titleTextSignUp,
                      style: TextStyle(fontSize: 40),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      //key: _formKey,
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      cursorColor: CustomizeColors.textBlackColor,
                      style: TextStyle(color: CustomizeColors.textBlackColor),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: CustomizeColors.textBlackColor),
                        ),
                        suffixIcon: Icon(Icons.email),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: CustomizeColors.textBlackColor),
                        ),
                        labelText: 'Email',
                        labelStyle:
                            TextStyle(color: CustomizeColors.textBlackColor),
                        hintStyle:
                            TextStyle(color: CustomizeColors.textBlackColor),
                      ),
                      validator: (String value) {
                        //handling the exception in try catch block
                        try {
                          if (value.isEmpty) {
                            return 'Please enter your email ';
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return 'Please Enter a valid Email';
                          }
                        } catch (e) {
                          print(e.toString());
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        email = value;
                      },
                    ),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        controller: passwordController,
                        //This will obscure text dynamically
                        obscureText: !_passwordVisible,
                        cursorColor: Colors.black,
                        style: TextStyle(color: CustomizeColors.textBlackColor),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: CustomizeColors.textBlackColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: CustomizeColors.textBlackColor),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: CustomizeColors.editTextColor,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                          labelText: 'Password',
                          labelStyle:
                              TextStyle(color: CustomizeColors.textBlackColor),
                          hintStyle:
                              TextStyle(color: CustomizeColors.textBlackColor),
                        ),
                        validator: validatePassword),
                    SizedBox(height: 10),
                    GestureDetector(child: Text('Forget Password?')),
                    // CustomizeFlatButton(
                    //   text: 'Forget Password?',
                    // ),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: SignUpButton(
                          onPressed: () {
                            //handling the exception in try catch block
                            try {
                              if (_formKey.currentState.validate()) {
                                print("successful");
                                return;
                              } else {
                                print("UnSuccessfull");
                              }
                            } catch (e) {
                              print(e.toString());
                            }
                          },
                          text: TextString.login_btn,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        TextString.or,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            signInWithGoogle().whenComplete(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            });
                          },
                          backgroundColor: Colors.white,
                          heroTag: 'btn1',
                          child: Image(
                              image:
                                  AssetImage('assets/images/google_logo.png')),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.white,
                          heroTag: 'btn2',
                          child: Image(
                            image:
                                AssetImage('assets/images/facebook_logo.png'),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("Don't have an account?"),
                      CustomizeFlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        text: 'Sign Up',
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Validation for the password
  String validatePassword(String value) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = RegExp(pattern);
    print(value);
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value))
        return 'Password must contain Uppercase, Lowercase letters, digits, \nand atleast 1 Special Charcter';
      else
        return null;
    }
  }

  //Validation for the email
  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      print('Email is valid');
      return 'Enter Valid Email';
    } else {
      print('Email is correct');
      return 'Email is correct';
    }
  }

  //Validation for the name
  String validateName(String value) {
    if (value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }
}
