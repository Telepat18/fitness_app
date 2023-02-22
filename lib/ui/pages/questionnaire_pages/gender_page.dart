import 'package:fitness_app/resources/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_strings.dart';
import '../../../resources/app_styles.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  final ButtonStyle genderButton = ElevatedButton.styleFrom(
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    foregroundColor: Colors.white,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12.0),
      ),
    ),
  );
  final ButtonStyle nextButton = ElevatedButton.styleFrom(
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
          padding: const EdgeInsets.all(12),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                _buildTitle(context),
                const SizedBox(
                  height: 120,
                ),
                const Text(
                  AppStrings.whatsYourGender,
                  style: AppStyles.styleWhatsYourGender,
                ),
                const Spacer(),
                _buildMaleButton(),
                const SizedBox(
                  height: 32,
                ),
                _buildFemaleButton(),
                _buildNextButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildShadowButton() {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 4,
          blurRadius: 10,
          offset: const Offset(0, 3),
        )
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
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

  Widget _buildMaleButton() {
    return Container(
      decoration: _buildShadowButton(),
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: ElevatedButton(
          style: genderButton,
          onPressed: () {},
          child: Row(
            children: [
              SvgPicture.asset(
                AppIcons.men,
                width: 48,
                height: 48,
              ),
              const Text(
                AppStrings.male,
                style: AppStyles.gender,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFemaleButton() {
    return Container(
      decoration: _buildShadowButton(),
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: ElevatedButton(
          style: genderButton,
          onPressed: () {},
          child: Row(
            children: [
              SvgPicture.asset(
                AppIcons.women,
                width: 48,
                height: 48,
              ),
              const Text(
                AppStrings.female,
                style: AppStyles.gender,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            style: nextButton,
            onPressed: () {},
            child: const Text(
              AppStrings.next,
              style: AppStyles.textStyleLogin,
            ),
          ),
        ),
      ),
    );
  }
}
