import 'package:fitness_app/resources/app_colors.dart';
import 'package:fitness_app/resources/app_icons.dart';
import 'package:fitness_app/resources/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/app_strings.dart';
import '../../../resources/app_styles.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  final ButtonStyle skipButtonStyle = TextButton.styleFrom(
    textStyle: AppStyles.skipText,
  );
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildTitle(),
                _buildPicture(),
                _buildWelcomeText(),
                _buildSubtitle(),
                _buildLoginButton(),
                _buildCreateAccountButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        RichText(
          textAlign: TextAlign.left,
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
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: const Text(
            AppStrings.skip,
            style: AppStyles.skipText,
          ),
        ),
      ],
    );
  }

  Widget _buildPicture() {
    return Center(
      child: Container(
        constraints: const BoxConstraints.tightForFinite(
          width: 256,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.lightGrey.withOpacity(0.2),
        ),
        child: const Image(
          height: 424,
          width: 600,
          image: AssetImage(AppImages.startPage),
        ),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return const Text(
      AppStrings.welcomeToFitnessApp,
      style: AppStyles.welcomeToFitnessApp,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }

  Widget _buildSubtitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppStrings.stayHealthyWorkoutTogether,
          style: AppStyles.stayHealthy,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: SvgPicture.asset(
            AppIcons.bicepsIcon,
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {},
        style: loginButtonStyle,
        child: const Text(
          AppStrings.login,
        ),
      ),
    );
  }

  Widget _buildCreateAccountButton() {
    return TextButton(
      onPressed: () {},
      child: const Text(
        AppStrings.createAcount,
        style: AppStyles.createAccountText,
      ),
    );
  }
}
