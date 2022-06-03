// ignore_for_file: camel_case_types

abstract class loginStates{}

class loginInitialState extends loginStates{}

class loginLoadingState extends loginStates{}

class loginSuccessState extends loginStates{}

class loginErrorState extends loginStates{
  final String? error;
  loginErrorState({this.error});
}


