import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservest/cubit/app_cubit/cubit.dart';
import 'package:reservest/cubit/app_cubit/stastes.dart';
import 'package:reservest/cubit/bloc_observer.dart';
import 'package:reservest/cubit/menu/menu_cubit.dart';
import 'package:reservest/cubit/menu/menu_states.dart';
import 'package:reservest/cubit/menu_price/cubit.dart';
import 'package:reservest/cubit/menu_price/stastes.dart';
import 'package:reservest/modules/login_screen/login_screen.dart';
import 'package:reservest/styles/colors/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
        BlocProvider(
          create: (context) => MenuPriceCubit(),
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
          BlocListener<MenuPriceCubit, MenuPriceStates>(
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
          home: const LoginScreen(),
        ),
      ),
    );
  }
}
//       <uses-permission android:name="android.permission.INTERNET"/>