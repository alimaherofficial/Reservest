// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservest/cubit/menu_price/cubit.dart';
import 'package:reservest/cubit/menu_price/stastes.dart';
import 'package:reservest/models/restaurants_menu.dart';
import 'package:reservest/modules/order_success/order_success.dart';
import 'package:reservest/styles/colors/colors.dart';

class PriceRestaurantScreen extends StatelessWidget {
  const PriceRestaurantScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MenuPriceCubit, MenuPriceStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = MenuPriceCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                cubit.price = 0;
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            elevation: 0,
            title: const Text('price'),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemCount: cubit.priceRestauranList.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return Container();
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return pricebuilder(
                            cubit.priceRestauranList[index], context);
                      },
                      shrinkWrap: true,
                    ),
                    // const Spacer(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Total Amount:',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' ${cubit.price.toString()}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OrderSuccess(),
                          ),
                        );
                      },
                      color: appColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // ignore: sort_child_properties_last
                      child: Text(
                        'ٍSubmit Order'.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      minWidth: double.infinity,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// const Spacer(),
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Text(
//                 'Total Amount:',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 ' 51.00 LE',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           MaterialButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const OrderSuccess(),
//                 ),
//               );
//             },
//             color: appColor,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Text(
//               'ٍSubmit Order'.toUpperCase(),
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 16,
//               ),
//             ),
//             minWidth: double.infinity,
//           ),

Widget pricebuilder(
  // StarbucksMenuModel model,
  RestaurantMenuModel model,
  BuildContext context,
) =>
    Row(
      children: [
        Image(
          image: AssetImage(
            '${model.imageName}',
          ),
          height: 150,
          width: 150,
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${model.name}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  '${model.price}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'x',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '${model.quantity}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
