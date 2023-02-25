part of 'login_page_cubit.dart';

@immutable
class LoginPageState extends Equatable {
  final Locale locale;

  final String errorMessage;

  const LoginPageState({
    required this.locale,
    this.errorMessage = '',
  });

  LoginPageState copyWith({
    Locale? locale,
    String? errorMessage,
  }) {
    return LoginPageState(
      locale: locale ?? this.locale,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [locale, errorMessage];
}
