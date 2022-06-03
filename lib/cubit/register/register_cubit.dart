// ignore_for_file: invalid_return_type_for_catch_error, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservest/cubit/register/register_ststes.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());
  static RegisterCubit get(context) => BlocProvider.of(context);

  void onRegister({
    @required String? email,
    @required String? password,
  }) {
    emit(RegisterLoadingState());

    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
          email: email!,
          password: password!,
        )
        .then((value) => {
              emit(RegisterSuccessState()),
              print(value.user!.email),
              print(value.user!.uid)
            })
        .catchError((error) => {
              emit(RegisterErrorState(error: error.toString())),
              print(error.toString())
            });
  }
}
