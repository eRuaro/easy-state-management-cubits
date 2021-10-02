import 'package:cubit_state_management/widgets/registration_text_field.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegistrationTextField(),
            ],
          ),
        ),
      ),
    );
  }
}
