import 'package:bloc/bloc.dart';
import 'package:untitled/app_cubit/app_states.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitialState());

  int currentage =21;
  int currentw =60;
  double currentheight=100;
  bool? ismale;
void ChangeGender(bool value){
  ismale =value;
  emit(ChangeGenderStates());
}

  void ChangeHeight(double value){
    currentheight =value;
    emit(ChangeheightStates());
  }
  void ChangeWeight(int value){
    currentw =value;
    emit(ChangeWightStates());
  }
  void ChangeAge(int value){
    currentage =value;
    emit(ChangeAgeStates());
  }





}
