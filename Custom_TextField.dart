import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool isobscureText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? width;
  final double? maxHeight;
  final double? maxWidth;

  const TextFieldWidget(
      {super.key,
      this.controller,
      this.keyboardType = TextInputType.text,
      this.isobscureText = false,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.width,
      this.maxHeight,
      this.maxWidth});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isobscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 12),
        constraints: const BoxConstraints(),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xff90A3BF)),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixText: ' ',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(
              color: Color(0xffE2E8F0),
              width: 8,
            )),
      ),
    );
  }
}
