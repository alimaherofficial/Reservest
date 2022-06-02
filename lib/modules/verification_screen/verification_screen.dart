import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:reservest/modules/home_screen/home_screen.dart';
import 'package:reservest/modules/set_location/set_location.dart';
import 'package:reservest/styles/colors/colors.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nubercontroller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Verification'),
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: SvgPicture.asset('assets/images/verification.svg'),
              ),
              const Text(
                'Verification',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Verification code has been sent to your email',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              VerificationCode(
                textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
                keyboardType: TextInputType.number,
                underlineColor: Colors.amber,
                length: 4,
                cursorColor: Colors.blue,
                onCompleted: (String value) {
                  nubercontroller.text = value;
                },
                onEditing: (bool value) {
                  // ignore: avoid_print
                  print('Editing: $value');
                },
              ),
              const SizedBox(height: 20),
              MaterialButton(
                onPressed: () {
                  if (nubercontroller.text.isEmpty) {
                    Fluttertoast.showToast(
                      msg: 'Please enter your verification code',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.grey,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SetLocation(),
                      ),
                    );
                  }
                },
                color: appColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Login',
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
                    'Don\'t receive code?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // // push to SignUpScreen
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const SetLocation(),
                      //   ),
                      // );
                    },
                    child: Text(
                      'Resend',
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
  }
}
