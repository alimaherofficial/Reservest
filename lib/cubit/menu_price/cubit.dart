import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservest/cubit/menu_price/stastes.dart';
import 'package:reservest/models/restaurants_menu.dart';
import 'package:reservest/models/starbucks_menu.dart';

class MenuPriceCubit extends Cubit<MenuPriceStates> {
  MenuPriceCubit() : super(MenuPriceInitialState());
  static MenuPriceCubit get(context) => BlocProvider.of(context);
  Color? a;
  Color? b;

  void changeColor(
    RestaurantMenuModel model,
  ) {
    model.isSelected = !model.isSelected;
    a = model.isSelected ? Colors.green : Colors.white;
    emit(MenuPriceChangeColorState());
  }

  void changeColor2(
    RestaurantMenuModel model,
  ) {
    model.isSelected = !model.isSelected;
    a = model.isSelected ? Colors.green : Colors.white;
    emit(MenuPriceChangeColorState2());
  }
  void changeColor3(
    StarbucksMenuModel model,
  ) {
    model.isSelected = !model.isSelected;
    a = model.isSelected ? Colors.green : Colors.white;
    emit(MenuPriceChangeColorState3());
  }
  void changeColor4(
    StarbucksMenuModel model,
  ) {
    model.isSelected = !model.isSelected;
    a = model.isSelected ? Colors.green : Colors.white;
    emit(MenuPriceChangeColorState4());
  }
}
