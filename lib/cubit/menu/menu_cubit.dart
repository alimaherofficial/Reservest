import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservest/cubit/menu/menu_states.dart';

class MenuCubit extends Cubit<MenuStates> {
  MenuCubit() : super(MenuInitialState());
  static MenuCubit get(context) => BlocProvider.of(context);

  String? a;

  String ali(String? b) {
   String b = a!;
    emit(MenuChangeState());
    return b;
  }
}
