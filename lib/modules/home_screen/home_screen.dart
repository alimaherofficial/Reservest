import 'package:flutter/material.dart';
import 'package:reservest/models/restaurants.dart';
import 'package:reservest/shared/components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    // BlocConsumer<MenuCubit, MenuStates>(
    //   listener: (context, state) {
    //   },
    //   builder: (context, state) {
       
    //     return
         Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            title: const Text('Restaurants'),
          ),
          body: SafeArea(
            child: Center(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: getRestaurants.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 30,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return buildwork2(
                    getRestaurants[index],
                    context,
                   
                  );
                },
              ),
            ),
          ),
      //   );
      // },
    );
  }
}
