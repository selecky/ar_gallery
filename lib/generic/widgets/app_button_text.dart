import 'package:ar_gallery/generic/constants.dart';
import 'package:flutter/material.dart';

class AppButtonText extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final double? width;
  final double? height;
  final TextStyle? style;

  const AppButtonText({
    super.key,
    required this.onTap,
    required this.text,
    this.width,
    this.height,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(Constants.radiusButton),
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(Constants.radiusButton),
        ),
        child: Center(child: Text(text, style: style ?? Theme.of(context).textTheme.labelLarge)),
      ),
    );
  }
}
