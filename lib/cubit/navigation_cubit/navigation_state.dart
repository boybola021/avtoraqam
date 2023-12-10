part of 'navigation_cubit.dart';

abstract class NavigationState extends Equatable {
  const NavigationState();
  @override
  List<Object> get props => [];
}

class NavigationInitial extends NavigationState {}

class NavigationPageState extends NavigationState {}

class NavigationButtonState extends NavigationState {}
