import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderSuccess extends StatelessWidget {
  const OrderSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('oreder success'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child:
                    SvgPicture.asset('assets/images/undraw_dua_lipa_ixam.svg'),
              ),
              const SizedBox(
                height: 60,
              ),
              // add login text

              const Text(
                'خلصنا الابلكيشن',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              // add username text field
              const SizedBox(height: 20),
              const Text(
                'لولولولولولولولولييييييييي',
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
    );
  }
}
