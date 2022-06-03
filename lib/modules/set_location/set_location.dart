
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:reservest/modules/congratulations_screen/congratulations_screen.dart';
import 'package:reservest/modules/home_screen/home_screen.dart';
import 'package:reservest/styles/colors/colors.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  String? dropdownValue1;
  String? dropdownValue2;
  String? dropdownValue3;
  List<String> branch1 = [
    'Downtown Cairo',
    'Faggala',
    'Fustat',
    'Islamic Cairo',
    'El Matareya',
    'Old Cairo',
  ];
  List<String> branch2 = [
    'Amreya',
    'El Maamora ',
    'Dekhela',
    'Miami',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Set Location'),
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
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: SvgPicture.asset(
                    'assets/images/undraw_my_location_re_r52x (1).svg'),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue1,
                  items: <String>[
                    'Egypt',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                    });
                  },
                  hint: const Text('Select your country'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue2,
                  items: <String>[
                    'Cairo',
                    'Alexandria',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue2 = newValue!;
                    });
                  },
                  hint: const Text('Select your City'),
                  borderRadius: BorderRadius.circular(10),
                  underline: Container(
                    height: 1,
                    color: appColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue3,
                  items: dropdownValue2 == 'Cairo'
                      ? branch1.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList()
                      : branch2.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue3 = newValue!;
                    });
                  },
                  hint: const Text('Select your Town'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  if (dropdownValue1 == null ||
                      dropdownValue2 == null ||
                      dropdownValue3 == null) {
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
                        builder: (context) => const CongratulationsScreen(),
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
            ],
          ),
        ),
      ),
    );
  }
}
