import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class HelmetScreen extends StatefulWidget {
  const HelmetScreen({super.key});

  @override
  State<HelmetScreen> createState() => _HelmetScreenState();
}

class _HelmetScreenState extends State<HelmetScreen> {
  UnityWidgetController? _unityWidgetController;

  @override
  void dispose() {
    _unityWidgetController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        UnityWidget(
          onUnityCreated: _onUnityCreated,
          onUnitySceneLoaded: onUnitySceneLoaded,
          useAndroidViewSurface: true, // faster
          runImmediately: true,
          fullscreen: false,
        ),
        // Positioned(
        //   top: 16,
        //   left: 16,
        //   child: AppButtonIcon(
        //     iconData: Icons.arrow_back,
        //     onTap: () {
        //       context.pop();
        //     },
        //   ),
        // ),
        // Align(
        //   alignment: Alignment.topCenter,
        //   child: Padding(
        //     padding: const EdgeInsets.only(top: 16),
        //     child: AppButtonTextUnity(text: 'Reset', width: 96, onTap: () {}),
        //   ),
        // ),
        // Align(
        //   alignment: Alignment.bottomCenter,
        //   child: Padding(
        //     padding: const EdgeInsets.only(bottom: 40),
        //     child: Row(
        //       mainAxisSize: MainAxisSize.max,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         AppButtonIcon(iconData: Icons.arrow_back_ios_new, onTap: () {}),
        //         const SizedBox(width: 16),
        //         AppButtonIcon(iconData: Icons.ac_unit, onTap: () {}),
        //         const SizedBox(width: 16),
        //         AppButtonIcon(iconData: Icons.arrow_forward_ios, onTap: () {}),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }

  void onUnitySceneLoaded(SceneLoaded? scene) {
    if (scene != null) {
      print('✅ Scene loaded: ${scene.name} (${scene.buildIndex})');
      _unityWidgetController?.resume(); // Safer place to resume
    } else {
      print('❌ Scene loaded callback received null');
    }
  }

  void _onUnityCreated(UnityWidgetController controller) {
    print('✅ Unity controller created');
    _unityWidgetController = controller;
    // Avoid calling resume() here directly — wait for the scene to load
  }
}
