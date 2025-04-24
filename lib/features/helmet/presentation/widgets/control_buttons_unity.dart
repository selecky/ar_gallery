import 'package:ar_gallery/generic/widgets/app_button_icon.dart';
import 'package:flutter/material.dart';

class ControlButtonsUnity extends StatelessWidget {
  const ControlButtonsUnity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButtonIcon(iconData: Icons.arrow_back_ios_new, onTap: () {}),
            const SizedBox(width: 16),
            AppButtonIcon(iconData: Icons.ac_unit, onTap: () {}),
            const SizedBox(width: 16),
            AppButtonIcon(iconData: Icons.arrow_forward_ios, onTap: () {}),
          ],
        ),
      ),
    );
  }
}
