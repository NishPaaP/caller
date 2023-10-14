import 'package:caller_app/data/const/constantvariables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _countryController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height*1,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: size.height*0.24,
                decoration: BoxDecoration(
                  color: KConstColors.primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70)
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: size.height*0.025),
                    Row(
                      children: [
                        IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Icon(
                                CupertinoIcons.arrow_left,
                              color: Colors.white,
                            ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height*0.03),

                    Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: size.height*0.035),
                    Text(
                      "Sign up to your account",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: size.height*0.02),
              Container(
                height: size.height*0.74,
                width: double.infinity,

                padding: EdgeInsets.only(left: 16,right: 16),
                child: Column(
                  children: [
                    SizedBox(height: size.height*0.035),
                    Padding(
                      padding: EdgeInsets.only(left: 14,right: 14),
                      child: Form(
                        key: _loginFormKey,

                        child: Column(
                          children: [
                            Container(
                              height: size.height*0.06,
                              //padding: EdgeInsets.only(top: 4,bottom: 4),
                              child: TextFormField(
                                style: TextStyle(fontSize: 14),
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: outlineInputBorder(),
                                  hintText: "Email",
                                  errorBorder: outlineInputBorder(),
                                  focusedBorder: outlineInputBorder(),
                                  disabledBorder: outlineInputBorder(),
                                  enabledBorder: outlineInputBorder(),
                                  focusedErrorBorder: outlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(height: size.height*0.015),
                            Container(
                              height: size.height*0.06,
                              //padding: EdgeInsets.only(top: 4,bottom: 4),
                              child: TextFormField(
                                style: TextStyle(fontSize: 14),
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: outlineInputBorder(),
                                  hintText: "Username",
                                  errorBorder: outlineInputBorder(),
                                  focusedBorder: outlineInputBorder(),
                                  disabledBorder: outlineInputBorder(),
                                  enabledBorder: outlineInputBorder(),
                                  focusedErrorBorder: outlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(height: size.height*0.015),
                            Container(
                              height: size.height*0.06,
                              //padding: EdgeInsets.only(top: 4,bottom: 4),
                              child: TextFormField(
                                style: TextStyle(fontSize: 14),
                                controller: _phoneController,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  border: outlineInputBorder(),
                                  hintText: "Phone Number",
                                  errorBorder: outlineInputBorder(),
                                  focusedBorder: outlineInputBorder(),
                                  disabledBorder: outlineInputBorder(),
                                  enabledBorder: outlineInputBorder(),
                                  focusedErrorBorder: outlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(height: size.height*0.015),
                            Container(
                              height: size.height*0.06,
                              //padding: EdgeInsets.only(top: 4,bottom: 4),
                              child: TextFormField(
                                style: TextStyle(fontSize: 14),
                                controller: _countryController,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  border: outlineInputBorder(),
                                  hintText: "Country",
                                  errorBorder: outlineInputBorder(),
                                  focusedBorder: outlineInputBorder(),
                                  disabledBorder: outlineInputBorder(),
                                  enabledBorder: outlineInputBorder(),
                                  focusedErrorBorder: outlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(height: size.height*0.015),
                            Container(
                              height: size.height*0.06,
                              //padding: EdgeInsets.only(top: 4,bottom: 4),
                              child: TextFormField(
                                style: TextStyle(fontSize: 14),
                                controller: _passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  border: outlineInputBorder(),
                                  hintText: "Password",
                                  errorBorder: outlineInputBorder(),
                                  focusedBorder: outlineInputBorder(),
                                  disabledBorder: outlineInputBorder(),
                                  enabledBorder: outlineInputBorder(),
                                  focusedErrorBorder: outlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(height: size.height*0.015),
                            Container(
                              height: size.height*0.06,
                              //padding: EdgeInsets.only(top: 4,bottom: 4),
                              child: TextFormField(
                                style: TextStyle(fontSize: 14),
                                controller: _confirmPasswordController,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  border: outlineInputBorder(),
                                  hintText: "Confirm Password",
                                  errorBorder: outlineInputBorder(),
                                  focusedBorder: outlineInputBorder(),
                                  disabledBorder: outlineInputBorder(),
                                  enabledBorder: outlineInputBorder(),
                                  focusedErrorBorder: outlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.035),
                    Row(
                      children: [
                        SizedBox(width: size.width*0.04),
                        Text(
                            "By selecting Agree and continue below",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                        ),
                      ],
                    ) ,
                    SizedBox(height: size.height*0.001),
                    Row(
                      children: [
                        Checkbox(
                            value: _isChecked,
                          onChanged: (bool ?newValue) {
                            setState(() {
                              _isChecked = newValue!;
                            });
                          },
                        ),
                        const Row(
                          children: [
                            Text(
                                "I Agree.",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),
                            ),
                            Text(
                                "Terms of service and Privacy Policy",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: size.height*0.05),
                    Container(
                      height: size.height*0.06,
                      width: size.width*0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: KConstColors.primaryColor
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: KConstColors.buttonTextColor
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
            color: Colors.black,
            width: 2
        )
    );
  }
}
