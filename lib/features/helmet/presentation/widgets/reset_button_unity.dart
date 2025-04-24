import 'package:ar_gallery/generic/widgets/app_button_text_unity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class ResetButtonUnity extends StatelessWidget {
  final UnityWidgetController? unityWidgetController;

  const ResetButtonUnity({super.key, required this.unityWidgetController});

  @override
  Widget build(BuildContext context) {
    return unityWidgetController == null
        ? const SizedBox()
        : Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: AppButtonTextUnity(
              text: 'Reset',
              width: 96,
              onTap: () {
                unityWidgetController?.postMessage(
                  'CanvasEventManager',
                  'CallEventButtonResetClick',
                  'test',
                );
              },
            ),
          ),
        );
  }
}
