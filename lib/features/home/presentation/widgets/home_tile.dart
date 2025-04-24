import 'package:ar_gallery/architecture/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTile extends StatelessWidget {
  final void Function() onTap;
  final IconData? iconData;
  final String? svgAssetName;
  final String title;

  const HomeTile({
    super.key,
    required this.onTap,
    this.iconData,
    this.svgAssetName,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              if (iconData != null)
                Icon(iconData, size: 80, color: Theme.of(context).app_textColor),
              if (svgAssetName != null)
                SvgPicture.asset(
                  svgAssetName!,
                  width: 80,
                  height: 80,
                  colorFilter: ColorFilter.mode(Theme.of(context).app_textColor, BlendMode.srcIn),
                ),
              Text(title, style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
        ),
      ),
    );
  }
}
