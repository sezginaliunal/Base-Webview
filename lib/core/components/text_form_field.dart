import 'package:flutter/material.dart';

class CustomFormWidget extends StatelessWidget {
  const CustomFormWidget({
    required this.controller,
    required this.labelText,
    required this.autofillHints,
    super.key,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  });
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Iterable<String>? autofillHints;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofillHints: autofillHints,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
    );
  }
}
