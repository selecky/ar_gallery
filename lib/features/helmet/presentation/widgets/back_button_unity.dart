import 'package:ar_gallery/generic/widgets/app_button_icon.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackButtonUnity extends StatelessWidget {
  const BackButtonUnity({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16,
      left: 16,
      child: AppButtonIcon(
        iconData: Icons.arrow_back,
        onTap: () {
          context.pop();
        },
      ),
    );
  }
}
