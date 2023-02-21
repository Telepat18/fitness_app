import 'package:equatable/equatable.dart';
import 'package:fitness_app/bloc/base_cubit.dart';
import 'package:flutter/material.dart';

part 'app_control_state.dart';

class AppControlCubit extends BaseCubit<AppControlState> {
  final PreferencesService _preferencesService;

  AppControlCubit(
    this._preferencesService,
    AppControlState initialState,
  ) : super(initialState);

  @override
  void handleError(String errorMessage) {
    emit(state.copyWith(errorMessage: errorMessage));
  }

  Future<void> setLocale(Locale locale) async {
    await makeErrorHandledCall(() async {
      await _preferencesService.setLocale(locale);

      emit(state.copyWith(locale: locale));
    });
  }
}
