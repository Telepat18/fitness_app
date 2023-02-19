import 'package:fitness_app/ui/pages/login_page/login_page.dart';
import 'package:flutter/material.dart';

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}
