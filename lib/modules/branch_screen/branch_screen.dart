import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reservest/modules/time_screen/time_screen.dart';
import 'package:reservest/styles/colors/colors.dart';

class BranchScreen extends StatefulWidget {

  const BranchScreen({Key? key, }) : super(key: key);

  @override
  State<BranchScreen> createState() => _BranchScreenState();
}

class _BranchScreenState extends State<BranchScreen> {

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

  String? dropdownValue1;
  String? dropdownValue2;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Select branch'),
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
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue1,
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
                      dropdownValue1 = newValue;
                    });
                  },
                  hint: const Text('Select City branch'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue2,
                  items: // toggled
                      dropdownValue1 == 'Cairo'
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
                      dropdownValue2 = newValue;
                    });
                  },
                  hint: const Text('Select  branch'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TimeScreen(),
                    ),
                  );
                },
                color: appColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Done',
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
