part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class GoToHelmetScreenEvent extends HomeEvent {
  const GoToHelmetScreenEvent({required this.context});

  final BuildContext context;

  @override
  List<Object?> get props => [context];
}
