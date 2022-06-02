import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservest/cubit/app_cubit/cubit.dart';
import 'package:reservest/cubit/app_cubit/stastes.dart';
import 'package:reservest/cubit/bloc_observer.dart';
import 'package:reservest/cubit/menu/menu_cubit.dart';
import 'package:reservest/cubit/menu/menu_states.dart';
import 'package:reservest/modules/home_screen/home_screen.dart';
import 'package:reservest/styles/colors/colors.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit(),
        ),
        BlocProvider(
          create: (context) => MenuCubit(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AppCubit, AppStates>(
            listener: (context, state) {},
          ),
          BlocListener<MenuCubit, MenuStates>(
            listener: (context, state) {},
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              // add hex color here 00BFA6
              primarySwatch: appColor,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: const HomeScreen()),
      ),
    );
  }
}
