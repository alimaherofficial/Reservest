// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservest/cubit/login/login_ststes.dart';

class LoginCubit extends Cubit<loginStates>
{

  LoginCubit() : super(loginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);



  void onlogin({
    @required String? email,
    @required String? password,
  }) {
    emit(loginLoadingState());

    FirebaseAuth.instance
        .signInWithEmailAndPassword(
          email: email!,
          password: password!,
        )
        .then((value) => {
              emit(loginSuccessState()),
              print(value.user!.email),
              print(value.user!.uid)
            })
        .catchError((error) => {
              emit(loginErrorState(error: error.toString())),
              print(error.toString())
            });
  }
  

}