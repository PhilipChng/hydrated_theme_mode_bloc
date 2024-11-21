// Flutter imports:
import 'package:flutter/material.dart' show ThemeMode;

// Package imports:
import 'package:hydrated_bloc/hydrated_bloc.dart';

/// {@template hydrated_theme_mode_bloc}
/// A hydrated bloc for ThemeMode
/// {@endtemplate}
class HydratedThemeModeBloc extends HydratedCubit<ThemeMode> {
  /// {@macro hydrated_theme_mode_bloc}
  HydratedThemeModeBloc() : super(ThemeMode.system);

  /// Changes the current theme mode.
  void change(ThemeMode? value) => emit(value ?? state);

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    switch (json['themeMode']) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      default:
        return ThemeMode.system;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {'themeMode': state.name};
  }
}
