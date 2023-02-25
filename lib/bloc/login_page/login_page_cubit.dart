import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import '../../service/preferenses_service.dart';
import '../core/base_cubit.dart';

part 'login_page_state.dart';

@injectable
class LoginPageCubit extends BaseCubit<LoginPageState> {
  final PreferencesService _preferencesService;

  LoginPageCubit(
    this._preferencesService,
    LoginPageState initialState,
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
