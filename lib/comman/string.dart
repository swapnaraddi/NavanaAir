import 'package:flutter/material.dart';

//String name for the texts
class TextString{
  static const start_booking = 'START BOOKING';
  static const appTitleNavana = 'navana ';
  static const appTitleAir = 'air';
  static const buttonSignIn = 'Sign in';
  static const buttonSignUp = 'SIGN UP';
  static const titleTextSignUp = 'Create \nan account';
  static const alreayHaveAnAccount = 'Already have an account?';
  static const skipForNow = 'Skip for Now';
  static const name = 'Name';
  static const email = 'Email';
  static const password = 'Password';
  static const plzEnterEmail = 'Please enter your email';
  static const validEmail = 'Please Enter a valid Email';
  static const login = 'Log In';
  static const login_btn = 'LOG IN';
  static const emailHintText = 'Enter your email';
  static const pswdlHintText = 'Enter the password';
  static const forgetPassword = 'Forget Password?';
  static const or = 'Or';


  //validating the email address
  static const emailValidation = '^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]';

}

//Image Array list which are used in launcher screen
final slideList = [
  'assets/images/flight_img1.jpg',
  'assets/images/flight_img2.jpg',
  'assets/images/flight_img3.jpg',
];

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
  }
  else {
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
