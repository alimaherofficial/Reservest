import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservest/cubit/menu/menu_states.dart';
import 'package:reservest/modules/restaurants_menu/restaurants_menu.dart';
import 'package:reservest/modules/starbucks_menu/starbucks_menu.dart';

class MenuCubit extends Cubit<MenuStates> {
  MenuCubit() : super(MenuInitialState());
  static MenuCubit get(context) => BlocProvider.of(context);

  String? a;
  void change(String? a) {
    this.a = a;
    emit(MenuChangeState());
  }

  void ali(context) {
    emit(MenuChangeState2());
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => a == 'RestaurantsMenu'
            ? const RestaurantsMenu()
            : const StarbucksMenu(),
      ),
    );
  
  }
}
