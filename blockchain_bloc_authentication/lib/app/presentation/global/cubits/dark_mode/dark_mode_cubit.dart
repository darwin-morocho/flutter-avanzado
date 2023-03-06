import 'package:bloc/bloc.dart';

class DarkModeCubit extends Cubit<bool> {
  DarkModeCubit(super.initialState);

  void updateDarkMode(bool value) {
    emit(value);
  }
}
