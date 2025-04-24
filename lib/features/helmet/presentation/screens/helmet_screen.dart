import 'package:ar_gallery/features/helmet/presentation/widgets/back_button_unity.dart';
import 'package:ar_gallery/features/helmet/presentation/widgets/control_buttons_unity.dart';
import 'package:ar_gallery/features/helmet/presentation/widgets/reset_button_unity.dart';
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
        const BackButtonUnity(),
        ResetButtonUnity(unityWidgetController: _unityWidgetController,),
        const ControlButtonsUnity(),
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
    setState(() {
      _unityWidgetController = controller;
    });
    // Avoid calling resume() here directly — wait for the scene to load
  }
}


