import 'package:fitness_app/resources/app_icons.dart';
import 'package:fitness_app/resources/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/app_strings.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final _formKey = GlobalKey<FormBuilderState>();

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
            children: [
              TextSpan(
                text: AppStrings.ness,
              )
            ],
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: const Text(
            AppStrings.skip,
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
      ),
    );
  }
}
