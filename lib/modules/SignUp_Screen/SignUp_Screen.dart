// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:reservest/cubit/register/register_cubit.dart';
import 'package:reservest/cubit/register/register_ststes.dart';
import 'package:reservest/modules/home_screen/home_screen.dart';
import 'package:reservest/modules/login_screen/login_screen.dart';
import 'package:reservest/modules/verification_screen/verification_screen.dart';
import 'package:reservest/styles/colors/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstnamecontroller = TextEditingController();
    var lastnamecontroller = TextEditingController();
    var emailcontroller = TextEditingController();
    var passwordcontroller = TextEditingController();
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = RegisterCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              title: const Text('Sign Up'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      width: 150,
                      child: SvgPicture.asset(
                        'assets/images/background2.svg',
                      ),
                    ),
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    // add username text field
                    const SizedBox(height: 10),
                    const Text(
                      'Sign Up now to get your offer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        controller: firstnamecontroller,
                        keyboardType: TextInputType.name,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your first name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'First Name',
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: appColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        controller: lastnamecontroller,
                        keyboardType: TextInputType.name,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your last name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: appColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        controller: emailcontroller,
                        keyboardType: TextInputType.emailAddress,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: appColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        controller: passwordcontroller,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: appColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    MaterialButton(
                      onPressed: () {
                        if (emailcontroller.text.isEmpty ||
                            passwordcontroller.text.isEmpty ||
                            firstnamecontroller.text.isEmpty ||
                            lastnamecontroller.text.isEmpty) {
                          Fluttertoast.showToast(
                            msg: 'Please enter your Data',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.grey,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                        } else {
                          cubit.onRegister(
                              email: emailcontroller.text,
                              password: passwordcontroller.text);
                          // push to HomeScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VerificationScreen(),
                            ),
                          );
                        }
                      },
                      color: appColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'I have an account!',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // push to SignUpScreen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 16,
                              color: appColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
