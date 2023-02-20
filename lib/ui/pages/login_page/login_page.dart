import 'package:fitness_app/resources/app_colors.dart';
import 'package:fitness_app/resources/app_icons.dart';
import 'package:fitness_app/resources/app_strings.dart';
import 'package:fitness_app/resources/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  bool obscureText = false;
  final ButtonStyle loginButtonStyle = ElevatedButton.styleFrom(
    textStyle: AppStyles.textStyleLogin,
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    foregroundColor: Colors.white,
    backgroundColor: AppColors.palettes,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12.0),
      ),
    ),
  );
  final ButtonStyle facebookButtonStyle = ElevatedButton.styleFrom(
    textStyle: AppStyles.textStyleGoogle,
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    foregroundColor: Colors.white,
    backgroundColor: AppColors.blue,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12.0),
      ),
    ),
  );
  final ButtonStyle googleButtonStyle = ElevatedButton.styleFrom(
    side: const BorderSide(
      width: 1,
      color: AppColors.grey,
    ),
    textStyle: AppStyles.textStyleFb,
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12.0),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildFitnessText(),
                const Text(
                  AppStrings.welcomeToFitness,
                  style: AppStyles.textStyleWelcomeToFitness,
                ),
                _buildEmailField(),
                _buildPasswordField(context),
                _buildForgotPassword(),
                _buildLoginButton(),
                _buildDivider(),
                _facebookButton(),
                _googleButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFitnessText() {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: AppStrings.fit,
          style: AppStyles.textStyleFit,
          children: [
            TextSpan(
              text: AppStrings.ness,
              style: AppStyles.textStyleNess,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return FormBuilderTextField(
      name: AppStrings.email,
      decoration: const InputDecoration(
        hintText: AppStrings.email,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          borderSide: BorderSide(
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return FormBuilderTextField(
      obscureText: obscureText,
      name: AppStrings.password,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(
            obscureText ? Icons.visibility : Icons.visibility_off,
            color: Theme.of(context).primaryColorDark,
          ),
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
        ),
        hintText: AppStrings.password,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          borderSide: BorderSide(
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buildForgotPassword() {
    return Align(
      alignment: Alignment.topLeft,
      child: GestureDetector(
        onTap: () {
          //TODO: add functionality for redirection on Forgot password page
        },
        child: const Text(
          AppStrings.forgottenYourPassword,
          style: AppStyles.textStyleForgotPassword,
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: loginButtonStyle,
        onPressed: () {
          //TODO: Add functionality for Log in
        },
        child: const Text(AppStrings.login),
      ),
    );
  }

  Widget _buildDivider() {
    final divider = Expanded(
      child: Container(
        color: AppColors.grey,
        height: 1,
      ),
    );
    return Row(
      children: [
        divider,
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            AppStrings.or,
            style: AppStyles.textStyleOr,
          ),
        ),
        divider,
      ],
    );
  }

  Widget _facebookButton() {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: facebookButtonStyle,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppIcons.fbIcon,
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 24),
            const Text(AppStrings.facebook),
          ],
        ),
      ),
    );
  }

  Widget _googleButton() {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: googleButtonStyle,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppIcons.googleIcon,
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 24),
            const Text(AppStrings.google),
          ],
        ),
      ),
    );
  }
}
