import 'package:ar_gallery/architecture/app.dart';
import 'package:ar_gallery/features/dark_mode/presentation/blocs/dark_mode_bloc.dart';
import 'package:ar_gallery/generic/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class AppButtonIcon extends StatelessWidget {
  final void Function() onTap;
  final IconData? iconData;
  final String? svgAssetName;
  final double? width;

  const AppButtonIcon({
    super.key,
    required this.onTap,
    this.iconData,
    this.svgAssetName,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkModeBloc, DarkModeState>(
      builder: (context, state) {
        return InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(Constants.radiusButton),
          child: Container(
            width: width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(Constants.radiusButton),
            ),
            child:
                iconData != null
                    ? Icon(iconData, size: 40, color: Theme.of(context).app_textColor)
                    : svgAssetName != null
                    ? SvgPicture.asset(
                      svgAssetName!,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).app_textColor,
                        BlendMode.srcIn,
                      ),
                    )
                    : const SizedBox(),
          ),
        );
      },
    );
  }
}
