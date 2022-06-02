import 'package:flutter/material.dart';
import 'package:reservest/models/restaurants_menu.dart';
import 'package:reservest/modules/home_screen/home_screen.dart';

class RestaurantsMenu extends StatelessWidget {
  const RestaurantsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('menu'),
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
              return menu(getRestaurantmenu1[index], getRestaurantmenu2[index],
                  context);
            },
          ),
        ),
      ),
    );
  }
}

Widget menu(
  RestaurantMenuModel model,
  RestaurantMenuModel model2,
  BuildContext contextx,
) =>
    Padding(
      padding: const EdgeInsets.all(15.0),
      // ignore: sized_box_for_whitespace
      child: Container(
        height: 200,
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    contextx,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Material(
                  elevation: 5.0,
                  shadowColor: Colors.black,
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
                  Navigator.push(
                    contextx,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Material(
                  shadowColor: Colors.black,
                  elevation: 5.0,
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
