import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/app_icons.dart';
import '../../../resources/app_strings.dart';

class GoalPage extends StatefulWidget {
  const GoalPage({super.key});

  @override
  State<GoalPage> createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
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
                  AppStrings.whatsYourGoal,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: ListView(
                        children: [
                          SizedBox(
                            width: 160,
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  AppIcons.buildMuscle,
                                  height: 48,
                                  width: 48,
                                ),
                                const Text(
                                  AppStrings.buildMuscle,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 160,
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  AppIcons.buildMuscle,
                                  height: 48,
                                  width: 48,
                                ),
                                const Text(
                                  AppStrings.buildMuscle,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 160,
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  AppIcons.buildMuscle,
                                  height: 48,
                                  width: 48,
                                ),
                                const Text(
                                  AppStrings.buildMuscle,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    height: 12,
                    width: 12,
                  ),
                ),
                _buildNextButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildShadow() {
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
          ),
        ),
      ],
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
            ),
          ),
        ),
      ),
    );
  }
}
