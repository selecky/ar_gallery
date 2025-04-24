import 'package:ar_gallery/features/dark_mode/presentation/widgets/dark_mode_switch.dart';
import 'package:ar_gallery/features/home/presentation/blocs/home_bloc.dart';
import 'package:ar_gallery/features/home/presentation/widgets/home_tile.dart';
import 'package:ar_gallery/generic/strings.dart';
import 'package:ar_gallery/generic/widgets/app_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

final _log = Logger('home_screen');

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Strings.app_title), actions: const [DarkModeSwitch()]),
      body: AppScreen(
        title: Strings.screen_title_home.tr(),
        hasBackButton: false,
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Wrap(
            children: [
              HomeTile(
                onTap: () {
                  context.read<HomeBloc>().add(GoToHelmetScreenEvent(context: context));
                  _log.info('helmet icon tapped');
                },
                svgAssetName: 'assets/images/helmet.svg',
                title: Strings.screen_title_helmet.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
