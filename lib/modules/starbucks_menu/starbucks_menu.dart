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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PriceScreen(),
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
              return menu(
                  getStarbucksMenu1[index], getStarbucksMenu2[index], context);
            },
          ),
        ),
      ),
    );
  }
}

Widget menu(
  StarbucksMenuModel model,
  StarbucksMenuModel model2,
  BuildContext contextx,
) =>
    BlocConsumer<MenuPriceCubit, MenuPriceStates>(
      listener: (context, state) {
      },
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
                      cubit.changeColor3(model);
                     
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
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 20),
                          //   child: Text(
                          //     '${model.price}',
                          //     overflow: TextOverflow.ellipsis,
                          //     maxLines: 1,
                          //   ),
                          // ),
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
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 20),
                          //   child: Row(
                          //     mainAxisSize: MainAxisSize.max,
                          //     children: [
                          //       const Text('Price'),
                          //       const SizedBox(
                          //         width: 10,
                          //       ),
                          //       Expanded(
                          //         child: Text(
                          //           '${model.price}',
                          //           overflow: TextOverflow.ellipsis,
                          //           maxLines: 1,
                          //           textAlign: TextAlign.center,
                          //           style: const TextStyle(
                          //             fontSize: 16,
                          //           ),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
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
