import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../resources/app_strings.dart';
import '../../resources/app_styles.dart';

class FitnessTextAppBar extends StatefulWidget {
  const FitnessTextAppBar({super.key});

  @override
  State<FitnessTextAppBar> createState() => _FitnessTextAppBarState();
}

class _FitnessTextAppBarState extends State<FitnessTextAppBar> {
  final ButtonStyle skipButtonStyle = TextButton.styleFrom(
    textStyle: AppStyles.skipText,
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 40),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: FormBuilder(
          child: Row(
            children: [
              _buildFitnessText(),
              Stack(alignment: Alignment.topRight, children: [
                SizedBox(
                  child: TextButton(
                    onPressed: () {},
                    style: skipButtonStyle,
                    child: const Text(AppStrings.skip),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _buildFitnessText() {
    return Center(
      child: RichText(
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
    );
  }
}
