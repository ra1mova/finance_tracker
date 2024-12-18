import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ChangeThemeEvent>((event, emit) {
      final box = Hive.box('theme');
      box.put('theme', event.theme);

      switch (box.get('theme')) {
        case 'light':
          emit(ThemeChangedState(theme: ThemeData.light()));
          break;
        case 'dark':
          emit(ThemeChangedState(theme: ThemeData.dark()));
          break;
        default:
          emit(ThemeChangedState(theme: ThemeData.dark()));
          break;
      }
    });
  }
}
