part of 'region_cubit.dart';

abstract class RegionState extends Equatable {
  const RegionState();
  @override
  List<Object> get props => [];
}

class RegionInitialState extends RegionState {}

class RegionLoadingState extends RegionState {}

class RegionGetState extends RegionState {
  final List<String> region;
  final String currentRegion;
  const RegionGetState({required this.region,this.currentRegion = KTStrings.vseRegion});
  @override
  List<Object> get props => [region];
}
class RegionsSelectedState extends RegionState {
  final String currentRegion;
  const RegionsSelectedState({this.currentRegion = KTStrings.vseRegion});
  @override
  List<Object> get props => [currentRegion];
}


class RegionSelectedButtonState extends RegionState {
  final int index;
  const RegionSelectedButtonState({required this.index});
}

class RegionErrorState extends RegionState {}
