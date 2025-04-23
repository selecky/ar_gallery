import 'package:ar_gallery/features/shell/presentation/widgets/shell_app_bar.dart';
import 'package:flutter/material.dart';

class ShellScreen extends StatelessWidget {
  final Widget child;

  const ShellScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: const ShellAppBar(), body: child);
  }
}
