import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HanimeAppBar extends StatelessWidget {
  const HanimeAppBar({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: Text(
        'Hanime',
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      leading: Builder(
        builder: (context) {
          return IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: const FaIcon(
              FontAwesomeIcons.bars,
            ),
            color: Theme.of(context).colorScheme.primary,
          );
        },
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.magnifyingGlass,
          ),
          color: Theme.of(context).colorScheme.primary,
        ),
      ],
    );
  }
}
