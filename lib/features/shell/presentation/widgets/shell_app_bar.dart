import 'package:ar_gallery/features/dark_mode/presentation/widgets/dark_mode_switch.dart';
import 'package:ar_gallery/generic/strings.dart';
import 'package:flutter/material.dart';

class ShellAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShellAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(Strings.app_title), actions: const [DarkModeSwitch()]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
