import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservest/cubit/menu_price/cubit.dart';
import 'package:reservest/cubit/menu_price/stastes.dart';
import 'package:reservest/models/starbucks_menu.dart';
import 'package:reservest/modules/price_screen/price_screen.dart';

class StarbucksMenu extends StatelessWidget {
  const StarbucksMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MenuPriceCubit, MenuPriceStates>(
      listener: (context, state) {},
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
                  for (var i = 0; i < cubit.priceStarbucksList.length; i++) {
                    cubit.price = cubit.price +
                        (cubit.priceStarbucksList[i].price! *
                            cubit.priceStarbucksList[i].quantity);
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PriceStarbucksListScreen(),
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
                itemCount: getStarbucksMenu1.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Container();
                },
                itemBuilder: (BuildContext context, int index) {
                  return menu(getStarbucksMenu1[index],
                      getStarbucksMenu2[index], context);
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
  StarbucksMenuModel model,
  StarbucksMenuModel model2,
  BuildContext contextx,
) =>
    BlocConsumer<MenuPriceCubit, MenuPriceStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = MenuPriceCubit.get(context);
        return Padding(
          padding: const EdgeInsets.all(15.0),
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 215,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      cubit.changeColor3(model);
                      cubit.addToPriceList(model);
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {
                                  cubit.minusNumberStarbucks(model);
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 25,
                                  color: model.isSelected
                                      ? Colors.white
                                      : Colors.green,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                model.quantity.toString(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                onPressed: () {
                                  cubit.addNumberstStarbucks(model);
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 25,
                                  color: model.isSelected
                                      ? Colors.white
                                      : Colors.green,
                                ),
                              ),
                            ],
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
                      cubit.changeColor4(model2);
                      cubit.addToPriceList(model2);
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {
                                  cubit.minusNumberStarbucks(model2);
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 25,
                                  color: model2.isSelected
                                      ? Colors.white
                                      : Colors.green,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                model2.quantity.toString(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                onPressed: () {
                                  cubit.addNumberstStarbucks(model2);
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 25,
                                  color: model2.isSelected
                                      ? Colors.white
                                      : Colors.green,
                                ),
                              ),
                            ],
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
