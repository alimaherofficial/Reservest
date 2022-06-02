import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reservest/modules/home_screen/home_screen.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            ),
          ),
        ],
      ),
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 150,
                  child: SvgPicture.asset(
                      'assets/images/congratulations.svg'),
                ),
                const SizedBox(
                  height: 60,
                ),
                // add login text

                const Text(
                  'Congratulations!!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                // add username text field
                const SizedBox(height: 20),
                const Text(
                  'You have finished the registration process.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Spacer(),
                const Text('Reservest',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),

                const Image(
                  height: 75,
                  width: 75,
                  image: AssetImage('assets/images/logo.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
