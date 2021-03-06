import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        obscureText: obscureText,
        onChanged: (value) {},
        validator: (value) {
          if (value == null) return 'este campo es requerido';
          return value.length < 3 ? 'Minimo 3 Caracteres' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          icon: icon == null ? null : Icon(icon),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        ));
  }
}
