import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import '../../services/strings.dart';
part 'region_state.dart';

class RegionCubit extends Cubit<RegionState> {
  RegionCubit() : super(RegionInitialState());

  void getRegion(){
    emit(RegionLoadingState());
    try{
      emit(const RegionGetState(region: KTStrings.allRegion));
    }catch(e){
      debugPrint("Error Get Region => $e");
      emit(RegionErrorState());
    }
  }
  void selectedRegion({required String text}){
    emit(RegionLoadingState());
    try{
      emit(RegionsSelectedState(currentRegion: text));
    }catch(e){
      debugPrint("Error Selected Region => $e");
      emit(RegionErrorState());
    }
  }
  void getSelectedRegion({required String text}){
    emit(RegionLoadingState());
    try{
      emit(RegionsSelectedState(currentRegion: text));
    }catch(e){
      debugPrint("Error Selected Region => $e");
      emit(RegionErrorState());
    }
  }

  int selectButtonRegion({required int index}){
    emit(RegionLoadingState());
    try{
      emit(RegionSelectedButtonState(index: index));
      return index;
    }catch(e){
      debugPrint("Error Selected Region => $e");
      emit(RegionErrorState());
    }
    return 0;
  }

}