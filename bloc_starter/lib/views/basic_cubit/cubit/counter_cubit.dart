import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int>{
  CounterCubit({
    this.inisialData = 0
  }) : super(inisialData);

  int inisialData;

  void plus() => emit(state + 1);

  void minus() => emit(state - 1);

}