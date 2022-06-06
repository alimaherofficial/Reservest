import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservest/cubit/menu_price/cubit.dart';
import 'package:reservest/cubit/menu_price/stastes.dart';
import 'package:reservest/models/restaurants_menu.dart';
import 'package:reservest/modules/price_screen/price_screen%20copy.dart';

class RestaurantsMenu extends StatelessWidget {
  const RestaurantsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MenuPriceCubit, MenuPriceStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        var cubit = MenuPriceCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            title: const Text('menu'),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.check_box,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  for (var i = 0; i < cubit.priceRestauranList.length; i++) {
                    cubit.price = cubit.price + cubit.priceRestauranList[i].price!;
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PriceRestaurantScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
          body: SafeArea(
            child: Center(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: getRestaurantmenu1.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Container();
                },
                itemBuilder: (BuildContext context, int index) {
                  return menu(getRestaurantmenu1[index],
                      getRestaurantmenu2[index], context);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget menu(
  RestaurantMenuModel model,
  RestaurantMenuModel model2,
  BuildContext context,
) =>
    BlocConsumer<MenuPriceCubit, MenuPriceStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = MenuPriceCubit.get(context);
        return Padding(
          padding: const EdgeInsets.all(15.0),
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 200,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      cubit.changeColor(model);
                      cubit.addToPriceList2(model);
                    },
                    child: Material(
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      color: model.isSelected ? Colors.green : Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              '${model.imageName}',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      cubit.changeColor2(model2);
                      cubit.addToPriceList2(model2);
                    },
                    child: Material(
                      shadowColor: Colors.black,
                      elevation: 5.0,
                      color: model2.isSelected ? Colors.green : Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              '${model2.imageName}',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

// void showMultiSelect(BuildContext context) async {
//   await showDialog(
//     context: context,
//     builder: (ctx) {
//       RestaurantMenuModel model;
//       return MultiSelectDialog(
//         items: [],
//         initialValue: [],
//         onConfirm: (values) {},
//       );
//     },
//   );
// }
