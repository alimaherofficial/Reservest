import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservest/cubit/app_cubit/stastes.dart';

class AppCubit extends Cubit<AppStates>
{

  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

}