import 'package:fitness_app/resources/app_icons.dart';
import 'package:fitness_app/resources/app_strings.dart';
import 'package:fitness_app/utils/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';

import '../../bloc/login_page/login_page_cubit.dart';
import '../../config/di/modules/locator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<LoginPageCubit>(),
      child: this,
    );
  }
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  bool obscureText = false;
  LoginPageCubit get _cubit => context.read();

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
                Text(
                  context.strings.welcomeToFitness,
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
            // text: context.strings.fit,
            // children: const [
            //   TextSpan(
            //     text: AppStrings.ness,
            //   )
            // ],
            ),
      ),
    );
  }

  Widget _buildEmailField() {
    return FormBuilderTextField(
      name: AppStrings.email,
      decoration: const InputDecoration(
        hintText: AppStrings.email,
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
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
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
