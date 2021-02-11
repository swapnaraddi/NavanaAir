import 'package:flutter/material.dart';
import 'package:navana_air/comman/colors.dart';
import 'package:navana_air/comman/string.dart';
import 'package:navana_air/components/signup_button.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
         padding: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              Text(
                TextString.titleTextSignUp,
                style: TextStyle(
                    fontSize: 24,
                    color: CustomizeColors.textBlackColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ListTile(
                title: TextField(
                  controller: nameController,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: '',
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                title: TextField(
                  controller: emailController,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    suffixIcon: Icon(Icons.mail),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: '',
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                title: TextField(
                  controller: passwordController,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey,),
                    labelText: 'Passwors',
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: '',
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: SignUpButton(
                  onPressed: (){
                    },
                  text: TextString.buttonSignUp,
                ),
              ),
            ],
          )),
    );
  }
}
