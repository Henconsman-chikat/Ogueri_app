import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const CustomInputField(
      {super.key, required this.hint, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
      ),
    );
  }
}
