import 'package:flutter/material.dart';
import 'package:navana_air/comman/colors.dart';
import 'package:navana_air/comman/string.dart';
import 'package:navana_air/components/signup_button.dart';
import 'package:navana_air/components/sized_box.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _passwordVisible;
  final _formKey = GlobalKey<FormState>();
  String email, name, password;

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
                    //SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                    MaxSizedBox(),
                    Text(
                      TextString.titleTextSignUp,
                      style: TextStyle(fontSize: 40),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                        // key: _formKey,
                        textCapitalization: TextCapitalization.words,
                        keyboardType: TextInputType.name,
                        controller: nameController,
                        cursorColor: CustomizeColors.textBlackColor,
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
                          labelText: TextString.name,
                          labelStyle:
                              TextStyle(color: CustomizeColors.textBlackColor),
                          hintStyle:
                              TextStyle(color: CustomizeColors.textBlackColor),
                        ),
                        validator: validateName),
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
                        labelText: TextString.email,
                        labelStyle:
                            TextStyle(color: CustomizeColors.textBlackColor),
                        hintStyle:
                            TextStyle(color: CustomizeColors.textBlackColor),
                      ),
                      validator: (String value) {
                        //handling the exception in try catch block
                        try {
                          if (value.isEmpty) {
                            return TextString.plzEnterEmail;
                          }
                          if (!RegExp(TextString.emailValidation)
                              .hasMatch(value)) {
                            return TextString.validEmail;
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
                          labelText: TextString.password,
                          labelStyle:
                              TextStyle(color: CustomizeColors.textBlackColor),
                          hintStyle:
                              TextStyle(color: CustomizeColors.textBlackColor),
                        ),
                        validator: validatePassword),
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
                          text: TextString.buttonSignUp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(TextString.alreayHaveAnAccount),
                      FlatButton(
                        child: Text(
                          TextString.buttonSignIn,
                          style:
                              TextStyle(color: CustomizeColors.textPinkColor),
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/login');
                        },
                      ),
                    ],
                  ),
                  FlatButton(
                    child: Text(
                      TextString.skipForNow,
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
