import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../views/home_page_idenficators.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());

  void personButtonJis() {
    if (HomePageProvideItem.index == 0) {
      HomePageProvideItem.index = 1;
      HomePageProvideItem.controller.clear();
      emit(NavigationButtonState());
    }
  }
  void personButtonYur() {
    if (HomePageProvideItem.index == 1) {
      HomePageProvideItem.index = 0;
      HomePageProvideItem.controller.clear();
      emit(NavigationButtonState());
    }
  }
}
