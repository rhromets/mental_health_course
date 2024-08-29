import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_health_course/widgets/bottom_nav_bar/bloc/navigation_event.dart';
import 'package:mental_health_course/widgets/bottom_nav_bar/bloc/navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationChangedState(index: 0)) {
    on<NavigateToEvent>((event, emit) {
      emit(NavigationChangedState(index: event.index));
    });
  }
}
