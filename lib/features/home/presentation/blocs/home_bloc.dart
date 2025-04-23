import 'dart:async';

import 'package:ar_gallery/features/home/presentation/navigation/home_navigation.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeNavigation navigation;

  HomeBloc({required this.navigation}) : super(HomeStateSuccess()) {
    on<GoToHelmetScreenEvent>(_onGoToHelmetScreenEvent);
  }

  Future<void> _onGoToHelmetScreenEvent(
    GoToHelmetScreenEvent event,
    Emitter<HomeState> emit,
  ) async {
    await navigation.goToHelmetScreen(context: event.context);
  }
}
