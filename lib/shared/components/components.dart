// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservest/cubit/menu/menu_cubit.dart';
import 'package:reservest/cubit/menu/menu_states.dart';
import 'package:reservest/models/restaurants.dart';
import 'package:reservest/modules/branch_screen/branch_screen.dart';

Widget buildwork2(
  RestaurantsModel restaurant,
  BuildContext contextx,
) {
  return BlocConsumer<MenuCubit, MenuStates>(
    listener: (context, state) {},
    builder: (context, state) {
      var cubit = MenuCubit.get(context);
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 350,
          child: InkWell(
            onTap: () {
              cubit.a = restaurant.pageName;
              Navigator.push(
                contextx,
                MaterialPageRoute(
                  // toggling between the two screens
                  builder: (contextx) => const BranchScreen(),
                  //  restaurant.pageName == 'RestaurantsMenu'
                  //     ? const RestaurantsMenu()
                  //     : const StarbucksMenu(),
                ),
              );
            },
            child: Material(
              elevation: 5.0,
              shadowColor: Colors.black,
              borderRadius: BorderRadius.circular(20.0),
              child: Padding(
                padding: const EdgeInsets.all(15.5),
                child: Image(
                  image: AssetImage(
                    '${restaurant.imageName}',
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
