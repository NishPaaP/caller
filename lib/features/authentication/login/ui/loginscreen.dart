import 'package:caller_app/data/const/constantvariables.dart';
import 'package:caller_app/features/authentication/signup/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height*1,
          width: double.infinity,
          color: Color(0xff1e1e5c),
          child: Column(
            children: [
              SizedBox(height: size.height*0.085),
              Container(
                height: size.height*0.1,
                width: size.width*0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logintext.png"),
                  )
                ),
              ),
              Text(
                  "WELCOME !",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: size.height*0.02),
              Text(
                  "Sign in to your account",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: size.height*0.02),
              Container(
                height: size.height*0.69839,
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.only(left: 16,right: 16),
                child: Column(
                  children: [
                    SizedBox(height: size.height*0.135),
                    Padding(
                      padding: EdgeInsets.only(left: 14,right: 14),
                      child: Form(
                        key: _loginFormKey,

                          child: Column(
                            children: [
                              TextFormField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: outlineInputBorder(),
                                  hintText: "Username/Email",
                                  errorBorder: outlineInputBorder(),
                                  focusedBorder: outlineInputBorder(),
                                  disabledBorder: outlineInputBorder(),
                                  enabledBorder: outlineInputBorder(),
                                  focusedErrorBorder: outlineInputBorder(),
                                ),
                              ),
                              SizedBox(height: size.height*0.045),
                              TextFormField(
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

                            ],
                          ),
                      ),
                    ),
                    SizedBox(height: size.height*0.07),
                    Container(
                      height: size.height*0.06,
                      width: size.width*0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: KConstColors.primaryColor
                      ),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: KConstColors.buttonTextColor
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.06),
                    Row(
                      children: [
                        Text(
                            "Don't have account?",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              color: KConstColors.primaryColor,
                            )
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUpScreen()));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: KConstColors.primaryColor,
                            ),
                          ),
                        )
                      ],
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
