part of 'app_control_cubit.dart';

@immutable
class AppControlState extends Equatable {
  final Locale locale;

  final String errorMessage;

  const AppControlState({
    required this.locale,
    this.errorMessage = '',
  });

  AppControlState copyWith({
    Locale? locale,
    String? errorMessage,
  }) {
    return AppControlState(
      locale: locale ?? this.locale,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [locale, errorMessage];
}
