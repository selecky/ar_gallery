import 'package:ar_gallery/generic/widgets/app_button_text.dart';
import 'package:flutter/material.dart';

class AppButtonTextUnity extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final double? width;

  const AppButtonTextUnity({super.key, required this.onTap, required this.text, this.width});

  @override
  Widget build(BuildContext context) {
    return AppButtonText(
      onTap: onTap,
      text: text,
      width: width,
      height: 56,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
