import 'package:flutter/material.dart';

class RegistrationTextField extends StatelessWidget {
  RegistrationTextField({this.onSubmitted});

  final onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: TextField(
          textInputAction: TextInputAction.send,
          onSubmitted: onSubmitted,
          decoration: InputDecoration(
            hintText: "Enter your Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
    );
  }
}
